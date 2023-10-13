if Config.Core == 'qb' then
    Core = exports[Config.CoreName]:GetCoreObject()
else
    ESX = exports[Config.CoreName]:getSharedObject()
end

RegisterNetEvent('mt-halloweenObjectcs:server:registerShop', function(name, items)
    exports.ox_inventory:RegisterShop(name, { name = name, inventory = items })
end)

for k, v in pairs(Config.props) do
    if Config.Core == 'qb' then
        Core.Functions.CreateUseableItem(string.format(v.item), function(source, item)
            local src = source
            local Player = Core.Functions.GetPlayer(src)
            if Player.Functions.GetItemBySlot(item.slot) ~= nil then
                TriggerClientEvent('mt-halloweenObjectcs:client:useHalloweenObject', src, v.item, v.prop)
            end
        end)
    else
        ESX.RegisterUsableItem(string.format(v.item), function(source)
            local src = source
            local Player = ESX.GetPlayerFromId(src)
            TriggerClientEvent('mt-halloweenObjectcs:client:useHalloweenObject', src, v.item, v.prop)
        end)        
    end
end

lib.callback.register('mt-halloweenObjectcs:server:getSpawnedObjects', function(source)
    local response = MySQL.query.await('SELECT * FROM `halloween_objects`')
    return(response)
end)

function updateObjects()
    for _, v in pairs(GetPlayers()) do
        TriggerClientEvent('mt-halloweenObjectcs:client:updateObjects', v)
    end
end

RegisterNetEvent('mt-halloweenObjectcs:server:saveNewObject', function(coords, object)
    local src = source
    if Config.Core == 'qb' then
        local Player = Core.Functions.GetPlayer(src)
        Player.Functions.RemoveItem(object.item, 1)
    else
        local Player = ESX.GetPlayerFromId(src)
        Player.removeInventoryItem(object.item, 1)
    end
    MySQL.insert('INSERT INTO `halloween_objects` (coords, object) VALUES (?, ?)', { json.encode(coords), json.encode(object) })
    updateObjects()
end)

RegisterNetEvent('mt-halloweenObjectcs:server:deleteObject', function(id, item)
    local src = source
    MySQL.query('DELETE FROM `halloween_objects` WHERE ID LIKE ?', { id })
    updateObjects()
    if Config.Core == 'qb' then
        local Player = Core.Functions.GetPlayer(src)
        Player.Functions.AddItem(item, 1)
    else
        local Player = ESX.GetPlayerFromId(src)
        Player.removeInventoryItem(item, 1)
    end
end)
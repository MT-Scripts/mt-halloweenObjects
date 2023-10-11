local Core = exports[Config.Core]:GetCoreObject()
local Renewed = exports[Config.RenewedLib]:getLib()

RegisterNetEvent('mt-halloweenObjectcs:server:registerShop', function(name, items)
    exports.ox_inventory:RegisterShop(name, { name = name, inventory = items })
end)

for k, v in pairs(Config.props) do
    Core.Functions.CreateUseableItem(string.format(v.item), function(source, item)
        local src = source
        local Player = Core.Functions.GetPlayer(src)
        if Player.Functions.GetItemBySlot(item.slot) ~= nil then
            TriggerClientEvent('mt-halloweenObjectcs:client:useHalloweenObject', src, v.item, v.prop)
        end
    end)
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
    local Player = Core.Functions.GetPlayer(src)
    Player.Functions.RemoveItem(object.item, 1)
    MySQL.insert('INSERT INTO `halloween_objects` (coords, object) VALUES (?, ?)', { json.encode(coords), json.encode(object) })
    updateObjects()
end)

RegisterNetEvent('mt-halloweenObjectcs:server:deleteObject', function(id, item)
    local src = source
    local Player = Core.Functions.GetPlayer(src)
    MySQL.query('DELETE FROM `halloween_objects` WHERE ID LIKE ?', { id })
    Player.Functions.AddItem(item, 1)
    updateObjects()
end)
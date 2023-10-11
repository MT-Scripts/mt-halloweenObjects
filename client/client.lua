local Renewed = exports[Config.RenewedLib]:getLib()
local Core = exports[Config.Core]:GetCoreObject()
lib.locale()
local blip = {}
local objects = {}

CreateThread(function()
    for k, v in pairs(Config.shops) do
        Renewed.addPed({ 
            model = v.model,
            dist = 20,
            coords = vec3(v.coords.x, v.coords.y, v.coords.z),
            heading = v.coords.w,
            scenario = v.scenario,
            freeze = true,
            invincible = true,
            tempevents = true,
            id = 'halloween_shop_'..k,
            target = {
                {
                    name = 'halloween_shop_'..k,
                    icon = 'fas fa-spider',
                    label = locale('open_shop'),
                    distance = 2.5,
                    onSelect = function()
                        openShop()
                    end
                },
            }
        })
        if v.showBlip then
            blip[k] = AddBlipForCoord(v.coords.x, v.coords.y, v.coords.x)
            SetBlipSprite(blip[k], v.sprite)
            SetBlipDisplay(blip[k], v.display)
            SetBlipAsShortRange(blip[k], true)
            SetBlipScale(blip[k], v.scale)
            SetBlipColour(blip[k], v.color)
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentSubstringPlayerName(v.label)
            EndTextCommandSetBlipName(blip[k])
        end
    end
    placeAllObjects()
end)

RegisterNetEvent('mt-halloweenObjectcs:client:updateObjects', function(data)
    if objects then
        for i = 1, #objects do DeleteEntity(objects[i]) objects[i] = nil end
    end
    Wait(100)
    placeAllObjects()
end)

function placeAllObjects()
    lib.callback('mt-halloweenObjectcs:server:getSpawnedObjects', false, function(result)
        if result then
            for k, v in pairs(result) do
                local cd = json.decode(v.coords)
                local object = json.decode(v.object)
                local coords = vec4(cd.x, cd.y, cd.z, cd.w)
                lib.requestModel(tostring(object.prop), 100)
                local prop = CreateObject(GetHashKey(tostring(object.prop)), vec3(coords.x, coords.y, coords.z), false, false)
                FreezeEntityPosition(prop, true)
                SetEntityHeading(prop, coords.w)
                Wait(100)
                objects[#objects+1] = prop
                local options = {
                    {
                        distance = 2.5,
                        label = locale('pick_object'),
                        icon = 'fas fa-hand-paper',
                        onSelect = function()
                            TriggerServerEvent('mt-halloweenObjectcs:server:deleteObject', v.ID, object.item)
                        end,
                        action = function()
                            TriggerServerEvent('mt-halloweenObjectcs:server:deleteObject', v.ID, object.item)
                        end
                    },
                }
                if Config.Target == 'ox_target' then
                    exports.ox_target:addLocalEntity(prop, options)
                else
                    exports[Config.Target]:AddTargetEntity(prop, { options = options, distance = 2.5 })
                end
            end
        end
    end)
end

function openShop()
    if Config.Inventory == 'ox_inventory' then
        TriggerServerEvent('mt-halloweenObjectcs:server:registerShop', 'halloween_shop', Config.shopItems)
        exports.ox_inventory:openInventory('shop', { type = 'halloween_shop' })
    else
        local items = {}
        local slots = 0
        for y, j in pairs(Config.shopItems) do
            items[#items+1] = { name = j.name, price = tonumber(j.price), amount = 1000, info = {}, slot = y }
            slots += 1
        end
        local Item = { label = 'Halloween Shop', slots = slots, items = items }
        TriggerServerEvent("inventory:server:OpenInventory", "shop", 'halloween_shop', Item)
    end
end

RegisterNetEvent('mt-halloweenObjectcs:client:useHalloweenObject', function(item, prop)
    lib.requestModel(GetHashKey(prop), 100)
    local ped = PlayerPedId()
    local pedCoords = GetEntityCoords(ped)
    local coords = vec4(pedCoords.x+0.5, pedCoords.y+0.5, pedCoords.z-1.0, 0)
    local obj = CreateObject(GetHashKey(prop), coords, false, false)
    SetEntityAlpha(obj, 450, false)
    SetEntityCollision(obj, false, false)
    Wait(100)
    SetEntityCoords(obj, coords)
    lib.showTextUI(locale('place_tUI')..'    \n'..locale('place_tUI2')..'    \n'..locale('place_tUI3')..'    \n'..locale('place_tUI4')..'    \n'..locale('place_tUI5')..'    \n'..locale('place_tUI6')..'    \n'..locale('place_tUI7')..'    \n'..locale('place_tUI8')..'    \n'..locale('place_tUI9'))
    Citizen.CreateThread(function()
        while true do
            Wait(0)
            if IsControlPressed(0, 172) then
                coords = vec4(coords.x+0.01, coords.y, coords.z, coords.w)
                SetEntityCoords(obj, coords)
            elseif IsControlPressed(0, 173) then
                coords = vec4(coords.x-0.01, coords.y, coords.z, coords.w)
                SetEntityCoords(obj, coords)
            elseif IsControlPressed(0, 174) then
                coords = vec4(coords.x, coords.y+0.01, coords.z, coords.w)
                SetEntityCoords(obj, coords)
            elseif IsControlPressed(0, 175) then
                coords = vec4(coords.x, coords.y-0.01, coords.z, coords.w)
                SetEntityCoords(obj, coords)
            elseif IsControlPressed(0, 19) then
                if IsControlPressed(0, 15) then
                    coords = vec4(coords.x, coords.y, coords.z+0.01, coords.w)
                    SetEntityCoords(obj, coords)
                elseif IsControlPressed(0, 14) then
                    coords = vec4(coords.x, coords.y, coords.z-0.01, coords.w)
                    SetEntityCoords(obj, coords)
                end
            elseif IsControlPressed(0, 15) then
                coords = vec4(coords.x, coords.y, coords.z, coords.w+0.5)
                SetEntityHeading(obj, coords.w)
                SetEntityCoords(obj, coords)
            elseif IsControlPressed(0, 14) then
                coords = vec4(coords.x, coords.y, coords.z, coords.w-0.5)
                SetEntityHeading(obj, coords.w)
                SetEntityCoords(obj, coords)
            elseif IsControlPressed(0, 73) then
                DeleteEntity(obj)
                lib.hideTextUI()
                break
            elseif IsControlPressed(0, 246) then
                DeleteEntity(obj)
                coords = vec4(coords.x, coords.y, coords.z-10.0, coords.w)
                Wait(100)
                TriggerServerEvent('mt-halloweenObjectcs:server:saveNewObject', coords, { prop = prop, item = item })
                lib.hideTextUI()
                break
            end
        end
    end)
end)
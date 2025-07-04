local QBCore = exports['qb-core']:GetCoreObject()
local PlayerJob = {}
local DealerPed = {}

RegisterNetEvent('QBCore:Client:OnPlayerLoaded')
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
    QBCore.Functions.GetPlayerData(function(PlayerData)
        PlayerJob = PlayerData.job
    end)
end)

RegisterNetEvent('QBCore:Client:OnJobUpdate')
AddEventHandler('QBCore:Client:OnJobUpdate', function(JobInfo)
    PlayerJob = JobInfo
end)

AddEventHandler('onClientResourceStart', function(resource)
    if GetCurrentResourceName() == resource then
        QBCore.Functions.GetPlayerData(function(PlayerData)
            if PlayerData.job then
                PlayerJob = PlayerData.job
            end
        end)
    end
end)

CreateThread(function()
    for k, v in pairs(Config.Locations) do
        if not DealerPed[k] then DealerPed[k] = {} end
        local current = v.pedhash
        current = type(current) == 'string' and GetHashKey(current) or current
        RequestModel(current)

        while not HasModelLoaded(current) do Wait(0) end

        DealerPed[k] = CreatePed(0, current, v.pedlocation.x, v.pedlocation.y, v.pedlocation.z - 1, v.pedlocation.w, false, false)
        FreezeEntityPosition(DealerPed[k], true)
        SetEntityInvincible(DealerPed[k], true)
        SetBlockingOfNonTemporaryEvents(DealerPed[k], true)

        exports["qb-target"]:AddTargetEntity(DealerPed[k], {
            options = {
                {
                    type = 'client',
                    event = 'nkoJobGarages:Menu',
                    action = function()
                        openMenu(k)
                    end,
                    label = v.targetLabel,
                    icon = v.targetIcon,
                    job = v.jobname,
                },
            },
            distance = 2.5
        })
    end
end)

function openMenu(department)
    local menu = {
        {
            header = Config.Locations[department].label .. ' | ' .. Lang:t('cfg.header'),
            txt = Lang:t('cfg.officer') .. ' <span style="color:#a71e1e; font-weight: bold;">' .. Config.Locations[department].officer .. '</span>',
            icon = "fa-solid fa-list",
            isMenuHeader = true,
        }
    }
    for k, v in pairs(Config.Vehicles[department]) do
        menu[#menu + 1] = {
            header = v.label,
            txt = '<span style="color:#50bb46; font-weight: bold;">$' .. v.price .. '</span> ' .. Lang:t('cfg.pay'),
            icon = "fa-solid fa-car",
            params = {
                event = 'nkoJobGarages:SpawnCar',
                args = {
                    vehicle = v.model,
                    loc = Config.Locations[department].spawnlocation,
                    livery = v.livery,
                    price = v.price
                }
            }
        }
    end
    exports['qb-menu']:openMenu(menu)
end

RegisterNetEvent('nkoJobGarages:SpawnCar', function(data)
    local ped = PlayerPedId()
    QBCore.Functions.Progressbar("showcard", Lang:t('cfg.progbar'), Config.ShowBadgeTime, false, true, {
        disableMovement = true,
        disableCarMovement = false,
        disableMouse = false,
        disableCombat = true,
    }, nil, nil, nil, function() -- Done
        ClearPedTasks(ped)

        local livery = data.livery
        local vehicle = data.vehicle
        local coords = data.loc
        local price = data.price

        QBCore.Functions.SpawnVehicle(vehicle, function(model)
            local properties = QBCore.Functions.GetVehicleProperties(model)
            local plate = "LSPD" .. tostring(math.random(1000, 9999)) -- Başında LSPD + 4 haneli rastgele sayı
            SetVehicleNumberPlateText(model, plate)
            exports[Config.Fuel]:SetFuel(model, 100)
            TaskWarpPedIntoVehicle(ped, model, -1)
            TriggerEvent(Config.KeyEvent, QBCore.Functions.GetPlate(model))
            SetVehicleEngineOn(model, true, true)
            if Config.CustomLivery then
                SetVehicleModKit(model, 0)
                for i = 1, 8 do
                    SetVehicleExtra(model, i, 0)
                end
                SetVehicleColours(model, 111, 0)
                SetVehicleMod(model, 48, livery, 1)
            end
            if Config.SaveSQL then
                TriggerServerEvent("nkoJobGarages:AddVehicleSQL", properties, vehicle, GetHashKey(model), plate)
            end
            if Config.Payment then
                TriggerServerEvent('nkoJobGarages:Payment', price)
            end
        end, coords, true)
    end)
end)

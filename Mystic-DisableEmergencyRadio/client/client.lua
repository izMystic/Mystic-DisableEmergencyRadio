Citizen.CreateThread(function()
    while true do
        local playerped = GetPlayerPed(-1)
        if IsPedInAnyVehicle(playerped, false) then
            local veh = GetVehiclePedIsUsing(playerped)
            if GetPedInVehicleSeat(veh, -1) == playerped then
                if GetVehicleClass(veh) == 18 then
                    SetVehRadioStation(veh, "OFF")
                    SetVehicleRadioEnabled(veh, false)
                end
            end
        end
        for i = 1, 12 do
            EnableDispatchService(i, false)
        end
        SetPlayerWantedLevel(PlayerId(), 0, false)
        SetPlayerWantedLevelNow(PlayerId(), false)
        SetPlayerWantedLevelNoDrop(PlayerId(), 0, false)
        Citizen.Wait(0)
    end
end)

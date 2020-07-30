Citizen.CreateThread(function()

    while true do
        local playerPed = GetPlayerPed(-1)
        local playerVeh = GetVehiclePedIsIn(playerPed, false)
        local isDamaged = IsVehicleDamaged(playerVeh)
        Citizen.Wait(1)

         --Rolls up windows upon Drop Ammo key press (Default F10)

    if IsControlJustReleased(1, 57) then
        if IsPedInVehicle(playerPed, playerVeh, false) then
            if GetPedInVehicleSeat(playerVeh, -1) == playerPed then
                RollUpWindow(playerVeh, 0)
                RollUpWindow(playerVeh, 1)
                alert("~b~Windows rolled up!")
                if isDamaged == false then
                    SetVehicleFixed(playerVeh)
                end
            else alert("You must be in the driver's seat to do this.")
            end
        else alert("You must be in a vehicle to do this.")
        end
    end
end
end)

function alert(msg)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, false, true, 2000)
end

--Made by Bridges
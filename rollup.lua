Citizen.CreateThread(function()

    while true do
        local playerPed = GetPlayerPed(-1)
        local playerVeh = GetVehiclePedIsIn(playerPed, false)
        local isDamaged = IsVehicleDamaged(playerVeh)
        Citizen.Wait(1)

         --Rolls up windows upon switch to Trevor key press (Default F7)

    if IsControlJustReleased(1, 168) then
        if IsPedInVehicle(playerPed, playerVeh, false) then
            RollUpWindow(playerVeh, 0)
            RollUpWindow(playerVeh, 1)
            alert("~b~Windows rolled up!")
            if isDamaged == false then
                SetVehicleFixed(playerVeh)
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
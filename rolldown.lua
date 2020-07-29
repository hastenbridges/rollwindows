Citizen.CreateThread(function()



while true do
    local playerPed = GetPlayerPed(-1)
    local playerVeh = GetVehiclePedIsIn(playerPed, false)
    Citizen.Wait(1)
    

    --Rolls down windows upon switch to Franklin key press (Default F6)
    if IsControlJustReleased(1, 167) then
        if IsPedInVehicle(playerPed, playerVeh, false) then
            RollDownWindow(playerVeh, 0)
            RollDownWindow(playerVeh, 1)
            alert("~y~Windows rolled down!")

        else alert("You must be in a vehicle to do this.")
        end
    end
end
end)

--Creates alert in top left with message
--https://i.imgur.com/M2NlW2V.png 

function alert(msg)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, false, true, 2000)
end

--Made by Bridges
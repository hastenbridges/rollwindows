Citizen.CreateThread(function()



while true do
    local playerPed = GetPlayerPed(-1)
    local playerVeh = GetVehiclePedIsIn(playerPed, false)
    Citizen.Wait(1)
    

    --Rolls down windows upon Drop Weapon key press (Default F9)
    if IsControlJustReleased(1, 56) then
        if IsPedInVehicle(playerPed, playerVeh, false) then
            if GetPedInVehicleSeat(playerVeh, -1) == playerPed then
                RollDownWindow(playerVeh, 0)
                RollDownWindow(playerVeh, 1)
                alert("~y~Windows rolled down!")
            else alert("You must be in the driver's seat to do this.")
            end
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
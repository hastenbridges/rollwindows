Citizen.CreateThread(function()

while true do
    local playerPed = GetPlayerPed(-1)
    local playerVeh = GetVehiclePedIsIn(playerPed, false)
    Citizen.Wait(1)
    
    --Rolls down windows upon switch to Franklin key press (Default F6)

    if IsControlJustReleased(1, 167) then
        RollDownWindow(playerVeh, 0)
        RollDownWindow(playerVeh, 1)
        alert("~y~Windows rolled down!")
    end

    --Rolls down windows upon switch to Trevor key press (Default F7)

    if IsControlJustReleased(1, 168) then
        RollUpWindow(playerVeh, 0)
        RollUpWindow(playerVeh, 1)
        alert("~b~Windows rolled up!")
    end
end
end)

--Creates alert in top left with message
--https://i.imgur.com/M2NlW2V.png 

function alert(msg)
    BeginTextCommandDisplayHelp("STRING")
    AddTextComponentSubstringPlayerName(msg)
    EndTextCommandDisplayHelp(0, false, true, 3000)
end

--Made by Bridges
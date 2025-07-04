local showing = false

-- functions --
function ShowTextUI(keybind, title, description)
    if showing then return end
    showing = true

    SendNUIMessage({
        action = "show",
        key = keybind,
        title = title,
        description = description
    })

    SetNuiFocus(false, false)

    CreateThread(function()
        Wait(5000)
        if showing then
            SendNUIMessage({ action = "hide" })
            showing = false
        end
    end)
end

function HideTextUI()
    if not showing then return end
    showing = false
    SendNUIMessage({ action = "hide" })
end

-- NUI callbacks --
RegisterNUICallback("hide", function(data, cb)
    HideTextUI()
    if cb then cb("ok") end
end)

-- commands --
RegisterCommand("hidetextui", function()
    HideTextUI()
end)

-- exports --
exports('ShowTextUI', ShowTextUI)
exports('HideTextUI', HideTextUI)

-- events --
RegisterNetEvent("Menco_textui:ShowTextUI", function(keybind, title, description)
    ShowTextUI(keybind, title, description)
end)

RegisterNetEvent("Menco_textui:HideTextUI", function()
    HideTextUI()
end)


RegisterCommand('test', function()
TriggerEvent('Menco_textui:ShowTextUI', 'F1', 'Open Garage', 'Hold button')
end)
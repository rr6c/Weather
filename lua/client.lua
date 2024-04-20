local display = false

function SetDisplay(bool)
    display = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "Weathernui",
        status = bool,
    })
end

--=====================================
local display2 = false
local BLACKOUT = false
function SetDisplay2(bool, Text)
    display2 = bool
    SetNuiFocus(bool, bool)
    SendNUIMessage({
        type = "Donejfh",
        status = bool,
        Text = Text,
    })
end
--=====================================

RegisterNUICallback("close", function()
    SetDisplay(false)
    SetDisplay2(false, "")
end)

RegisterNuiCallback("rain", function ()
    TriggerServerEvent("ArabMarket:rainWeather")
    SetDisplay(false)
end)

RegisterNuiCallback("halloween", function ()
    TriggerServerEvent("ArabMarket:halloweenWeather")
    SetDisplay(false)
end)

RegisterNuiCallback("lightoff", function ()
    TriggerServerEvent("ArabMarket:lightoffWeather")
    SetDisplay(false)
end)

RegisterNuiCallback("night", function ()
    TriggerServerEvent("ArabMarket:nightWeather")
    SetDisplay(false)
end)

RegisterNuiCallback("snow", function ()
    TriggerServerEvent("ArabMarket:snowWeather")
    SetDisplay(false)
end)

RegisterNuiCallback("sun", function ()
    TriggerServerEvent("ArabMarket:sunWeather")
    SetDisplay(false)
end)

RegisterNetEvent("ArabMarket:updateWeather")
AddEventHandler("ArabMarket:updateWeather", function(weatherType)
    SetWeatherTypeNowPersist(weatherType)
    SetWeatherTypePersist(weatherType)
    SetWeatherTypeNow(weatherType)
    SetWeatherTypeNowPersist(weatherType)
    if weatherType == "CLEAR" then
        return
    end
    TriggerEvent("gfhjgi546df:dfgdf456dgdfg32534534534534524fdgdfgdfg346346",weatherType)
    SetTimeout(1000, function()
        SetDisplay2(false, "")
    end)
end)

RegisterNetEvent("ArabMarket:halloweenWeather:client")
AddEventHandler("ArabMarket:halloweenWeather:client", function()
    NetworkOverrideClockTime(22, 0, 0)
end)

RegisterNetEvent("ArabMarket:lightoffWeather:client")
AddEventHandler("ArabMarket:lightoffWeather:client", function()
    BLACKOUT = not BLACKOUT
    if BLACKOUT then
        SetArtificialLightsState(true)
        TriggerEvent("gfhjgi546df:dfgdf456dgdfg32534534534534524fdgdfgdfg346346"," تم قفل الاضواء")
    else
        SetArtificialLightsState(false)
        TriggerEvent("gfhjgi546df:dfgdf456dgdfg32534534534534524fdgdfgdfg346346"," تم تشغيل الاضواء")
    end
    SetTimeout(1000, function()
        SetDisplay2(false, "")
    end)    
end)

RegisterNetEvent("ArabMarket:nightWeather:client")
AddEventHandler("ArabMarket:nightWeather:client", function()
    NetworkOverrideClockTime(22, 0, 0)
    TriggerEvent("gfhjgi546df:dfgdf456dgdfg32534534534534524fdgdfgdfg346346","Night")
    SetTimeout(1000, function()
        SetDisplay2(false, "")
    end)
end)

RegisterNetEvent("ArabMarket:sunWeather:client")
AddEventHandler("ArabMarket:sunWeather:client", function()
    NetworkOverrideClockTime(10, 0, 0)
    TriggerEvent("gfhjgi546df:dfgdf456dgdfg32534534534534524fdgdfgdfg346346","Sun")
    SetTimeout(1000, function()
        SetDisplay2(false, "")
    end)
end)

RegisterNetEvent("gfhjgi546df:dfgdf456dgdfg32534534534534524fdgdfgdfg346346")
AddEventHandler("gfhjgi546df:dfgdf456dgdfg32534534534534524fdgdfgdfg346346", function (Text)
    SetDisplay2(true, Text)
end)

RegisterCommand("dfgjdf43955g345345345jd345345345g56:4334534534565345345345fdg345345345", function()
    SetDisplay(not display)
end)

RegisterKeyMapping("dfgjdf43955g345345345jd345345345g56:4334534534565345345345fdg345345345", "...", "keyboard", "o")
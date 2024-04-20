function sendToDiscord(Webhook, title, msg)
    local embed = {
        {
            ["color"] = 15548997,
            ["title"] = title,
            ["description"] = msg,
            ["thumbnail"] = {
                ["url"] = Config.Webhook.ServerAvatar
            },
            ["footer"] = {
                ["text"] = "Made by Flawless | [ " .. os.date("%x | %I:%M %p") .. " ]",
                ["icon_url"] = "https://media.discordapp.net/attachments/1159898964578029577/1196479024688533524/512.png?ex=65b7c6ec&is=65a551ec&hm=dcf35cd2dd5e72bba0cdd71c573b811ca87a6a78107259bee102de336664b623&=&format=webp&quality=lossless"
            }
        }
    }

    PerformHttpRequest(
        Webhook,
        function(err, text, headers) end,
        'POST',
        json.encode({ username = "Flawless", avatar_url = "https://media.discordapp.net/attachments/1159898964578029577/1196479025644851423/512_1.gif?ex=65b7c6ed&is=65a551ed&hm=a6c6e07fa79ce499a456cd67806e416393cdc05dcd1d2d09be6483abc8b1910e&=", embeds = embed }),
        { ['Content-Type'] = 'application/json' }
    )
end


RegisterNetEvent("ArabMarket:rainWeather")
AddEventHandler("ArabMarket:rainWeather", function()
    TriggerClientEvent("ArabMarket:updateWeather", -1, "RAIN")
end)

RegisterNetEvent("ArabMarket:halloweenWeather")
AddEventHandler("ArabMarket:halloweenWeather", function()
    TriggerClientEvent("ArabMarket:halloweenWeather:client", -1)
    TriggerClientEvent("ArabMarket:updateWeather", -1, "HALLOWEEN")
end)

RegisterNetEvent("ArabMarket:lightoffWeather")
AddEventHandler("ArabMarket:lightoffWeather", function()
    TriggerClientEvent("ArabMarket:lightoffWeather:client", -1)
end)

RegisterNetEvent("ArabMarket:nightWeather")
AddEventHandler("ArabMarket:nightWeather", function()
    TriggerClientEvent("ArabMarket:nightWeather:client", -1)
    TriggerClientEvent("ArabMarket:updateWeather", -1, "CLEAR")
end)

RegisterNetEvent("ArabMarket:snowWeather")
AddEventHandler("ArabMarket:snowWeather", function()
    TriggerClientEvent("ArabMarket:updateWeather", -1, "XMAS")
end)

RegisterNetEvent("ArabMarket:sunWeather")
AddEventHandler("ArabMarket:sunWeather", function()
    TriggerClientEvent("ArabMarket:sunWeather:client", -1)
    TriggerClientEvent("ArabMarket:updateWeather", -1, "CLEAR")
end)


AddEventHandler('onResourceStart', function()
    Wait(1000)
    print("^2===========================================================================")
    print("^2=== Welcome ^7[ FlawLess Weather^7 ] ^7This Script Made By ^5Pekka ^2 ===")
    print("^2===========================================================================")
end)
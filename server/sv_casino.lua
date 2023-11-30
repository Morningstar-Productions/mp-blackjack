local function SetExports()
    SetGetChipsCallback(function(source)
        local Player = QBCore.Functions.GetPlayer(source)
        local Chips = Player.Functions.GetMoney("casino")

        if Chips then Chips = Chips end

        return TriggerClientEvent('QBCore:Notify', source, "You have no chips..")
    end)

    SetTakeChipsCallback(function(source, amount)
        local Player = QBCore.Functions.GetPlayer(source)

        if Player then
			Player.Functions.RemoveMoney("casino", amount, "Blackjack Round")
			TriggerClientEvent('qb-phone:client:CustomNotification', source, 'CASINO', 'Removed ' .. amount .. ' from Casino Bettings', 'fas fa-gem', '#ffffff', 5000)
			TriggerEvent('qb-log:server:CreateLog', "casino", "Chips", "yellow", "**"..GetPlayerName(source) .. "** put $"..amount.." in the casino table.")
		end
    end)

    SetGiveChipsCallback(function(source, amount)
        local Player = QBCore.Functions.GetPlayer(source)

        if Player then
			Player.Functions.AddMoney("casino", amount, "Won Blackjack")
			TriggerClientEvent('qb-phone:client:CustomNotification', source, 'CASINO', 'Added ' .. amount .. ' to Casino Bettings', 'fas fa-gem', '#ffffff', 5000)
			TriggerEvent('qb-log:server:CreateLog', "casino", "Chips", "red", "**"..GetPlayerName(source) .. "** got $"..amount.." from the casino table and they won big!")
		end
    end)
end

AddEventHandler("onResourceStart", function(resourceName)
	if resourceName ~= GetCurrentResourceName() then return end

    Wait(1000)
    SetExports()
end)

SetExports()
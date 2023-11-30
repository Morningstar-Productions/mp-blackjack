* For New qb-smallresources/client/removeentities.lua

Config.Lua
```lua
    -- Gabz Casino
    { coords = vector3(1036.43, 51.77, 69.06), heading = 0, length = 200, width = 200, model = "vw_prop_casino_blckjack_01" },
    { coords = vector3(1044.12, 53.47, 69.06), heading = 0, length = 200, width = 200, model = "vw_prop_casino_blckjack_01" },
    { coords = vector3(1043.52, 6.33, 69.06), heading = 0, length = 200, width = 200, model = "vw_prop_casino_blckjack_01" },
    { coords = vector3(1038.22, 55.68, 69.06), heading = 0, length = 200, width = 200, model = "vw_prop_casino_blckjack_01" },
    { coords = vector3(1043.42, 56.8, 69.06), heading = 0, length = 200, width = 200, model = "vw_prop_casino_blckjack_01" },
    { coords = vector3(1025.9, 61.5, 69.87), heading = 0, length = 200, width = 200, model = "vw_prop_casino_blckjack_01b" },
    { coords = vector3(1030.79, 40.68, 69.87), heading = 0, length = 200, width = 200, model = "vw_prop_casino_blckjack_01b"},
    { coords = vector3(1033.82, 41.51, 69.87), heading = 0, length = 200, width = 200, model = "vw_prop_casino_blckjack_01b"},
    { coords = vector3(1028.99, 62.17, 69.87), heading = 0, length = 200, width = 200, model = "vw_prop_casino_blckjack_01b"},
```

* For Old qb-smallresources/client/removeentities.lua

```lua
    -- Gabz Casino
    {x = 1036.43, y = 51.77, z = 69.06, model = "vw_prop_casino_blckjack_01"},
    {x = 1044.12, y = 53.47, z = 69.06, model = "vw_prop_casino_blckjack_01"}, 
    {x = 1043.52, y = 56.33, z = 69.06, model = "vw_prop_casino_blckjack_01"}, 
    {x = 1038.22, y = 55.68, z = 69.06, model = "vw_prop_casino_blckjack_01"},
    {x = 1025.9, y = 61.5, z = 69.87, model = "vw_prop_casino_blckjack_01b"},
    {x = 1030.79, y = 40.68, z = 69.87, model = "vw_prop_casino_blckjack_01b"},
```

## If using Gabz Interior

* Replace Table Locations (Line 23 - 80)

```lua
tables = { -- Spawns Ped Only -- Setup Currently For This https://forum.cfx.re/t/cayo-perico-casino-dlc-ipl-loader/2099391
	{
		coords = vector4(0, 0, 0, 0),
		highStakes = false
	},
	{
		coords = vector4(0, 0, 0, 0),
		highStakes = false
	},
	{
		coords = vector4(0, 0, 0, 0),
		highStakes = false
	},
	{
		coords = vector4(0, 0, 0, 0),
		highStakes = false
	},
	{
		coords = vector4(0, 0, 0, 0),
		highStakes = false
	},
	{
		coords = vector4(0, 0, 0, 0),
		highStakes = false
	},
	{
		coords = vector4(0, 0, 0, 0),
		highStakes = true
	},
	{
		coords = vector4(0, 0, 0, 0),
		highStakes = true
	},
	{
		coords = vector4(0, 0, 0, 0),
		highStakes = true
	},
	{
		coords = vector4(0, 0, 0, 0),
		highStakes = true
	},
	{
		coords = vector4(0, 0, 0, 0),
		highStakes = true
	},
	{
		coords = vector4(0, 0, 0, 0),
		highStakes = true
	},
	{
		coords = vector4(0, 0, 0, 0),
		highStakes = true
	},
	{
		coords = vector4(0, 0, 0, 0),
		highStakes = true
	},
}
```

* Add in Custom Tables for Gabz Interior

```lua
customTables = { -- Spawns ped with table, example below
	{
		coords = vector4(-1394.8, -601.95, 35.51, 212.82),
		highStakes = true,
		color = 1
	},
	{
		coords = vector4(-1398.15, -598.03, 35.51, 303),
		highStakes = false,
		color = 3
	},
	{
		coords = vector4(-1402.65, -600.68, 35.51, 32.00),
		highStakes = false,
		color = 3
	},
	{
		coords = vector4(-1406.36, -603.34, 35.51, 32.00),
		highStakes = false,
		color = 3
	},
	{
		coords = vector4(1043.7, 51.61, 68.06, 64.21),
		highStakes = false,
		color = 2
	},
	{
		coords = vector4(1042.42, 57.55, 68.06, 145.18),
		highStakes = false,
		color = 2
	},
	{
		coords = vector4(1037.78, 50.37, 68.06, 330.39),
		highStakes = false,
		color = 2
	},
	{
		coords = vector4(1036.44, 56.11, 68.06, 240.51),
		highStakes = false,
		color = 2
	},
	{
		coords = vector4(1024.41, 58.63, 68.87, 150.27),
		highStakes = true,
		color = 3
	},
	{
		coords = vector4(1027.13, 63.67, 68.87, 332.04),
		highStakes = true,
		color = 3
	},
	{
		coords = vector4(1028.52, 42.2, 68.87, 57.6),
		highStakes = true,
		color = 3
	},
	{
		coords = vector4(1033.32, 39.29, 68.87, 227.53),
		highStakes = true,
		color = 3
	},
}
```

# New Money Features:

```lua
	-- Add New Money Type to qb-core/config.lua or qbx_core/configs/server.lua

	-- QBCore
	QBConfig.Money = {}
	QBConfig.Money.MoneyTypes = { cash = 500, bank = 5000, casino = 0 } -- type = startamount - Add or remove money types for your server (for ex. blackmoney = 0), remember once added it will not be removed from the database!
	QBConfig.Money.DontAllowMinus = { 'cash', 'casino' }                -- Money that is not allowed going in minus
	QBConfig.Money.PayCheckTimeOut = 10                                 -- The time in minutes that it will give the paycheck
	QBConfig.Money.PayCheckSociety = false                              -- If true paycheck will come from the society account that the player is employed at, requires qb-management

	-- QBox
	money = {
        ---@alias MoneyType 'cash' | 'bank' | 'casino'
        ---@alias Money {cash: number, bank: number, casino: number}
        ---@type Money
        moneyTypes = { cash = 500, bank = 5000, casino = 0 }, -- type = startamount - Add or remove money types for your server (for ex. blackmoney = 0), remember once added it will not be removed from the database!
        dontAllowMinus = { 'cash', 'casino' }, -- Money that is not allowed going in minus
        paycheckTimeout = 10, -- The time in minutes that it will give the paycheck
        paycheckSociety = false -- If true paycheck will come from the society account that the player is employed at, requires qb-management
    },
```

* If using ox_inventory (TEST AT OWN RISK):

```lua
	-- Add to setupPlayer() in ox_inventory/modules/bridge/qb/server.lua

	Inventory.SetItem(Player.PlayerData.source, 'casinochips', Player.PlayerData.money.casino)
```

```lua
	-- Change this code:

				if not hasThis then
					local amount = player.Functions.GetMoney(name == 'money' and 'cash' or name)

					if amount then
						items[#items + 1] = { name = name, amount = amount }
					end
				end

	-- To this:
				if not hasThis then
					local amount = player.Functions.GetMoney(name == 'money' and 'cash' or name)
					local amountCasino = player.Functions.GetMoney(name == 'casinochips' and 'casino' or name)

					if amount then
						items[#items + 1] = { name = name, amount = amount }
					end

					if amountCasino then
						items[#items + 1] = { name = name, amount = amountCasino }
					end
				end
```

```lua
-- Change this

AddEventHandler('QBCore:Server:OnMoneyChange', function(src, account, amount, changeType)
	if account ~= "cash" then return end

	local item = Inventory.GetItem(src, 'money', nil, false)

    if not item then return end

	Inventory.SetItem(src, 'money', changeType == "set" and amount or changeType == "remove" and item.count - amount or changeType == "add" and item.count + amount)
end)

-- To this

AddEventHandler('QBCore:Server:OnMoneyChange', function(src, account, amount, changeType)
	if account ~= "cash" or account ~= "casino" then return end

	local item = Inventory.GetItem(src, 'money', nil, false)
	local item2 = Inventory.GetItem(src, 'casinochips', nil, false)

    if not item then return end
	if not item2 then return end

	Inventory.SetItem(src, 'money', changeType == "set" and amount or changeType == "remove" and item.count - amount or changeType == "add" and item.count + amount)
	Inventory.SetItem(src, 'casinochips', changeType == "set" and amount or changeType == "remove" and item.count - amount or changeType == "add" and item.count + amount)
end)
```

```lua
-- Add this line to server.syncInventory(inv)
        if accounts.casino and accounts.casino ~= player.Functions.GetMoney('casino') then
			player.Functions.SetMoney('casino', accounts.casino, "Sync money with inventory")
		end
```
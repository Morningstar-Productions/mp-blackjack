# qb-blackjack
Blackjack Script For QB-Core

## This Script is being picked up by xViperAG

## Join the Discord

* https://discord.gg/3CXrkvQVds

## Special Thanks

* Xinerki for the original standalone https://github.com/Xinerki/kgv-blackjack
* Macky4546 and QBCore for maintaining the resource for QBCore Framework: https://github.com/macky4546/qb-blackjack

## qb-casino Missing? No Problem

* Install sv_casino to your Server Side of qb-smallresources (This fixes the missing chips problem.)

# Warning! MAKE SURE qb-blackjack STARTS BEFORE qb-smallresources!!! The export will NOT work unless you have it in this order.

## Need a Casino?

### Here are some suggestions:

* https://forum.cfx.re/t/cayo-perico-casino-dlc-ipl-loader/2099391 (FREE)
* https://github.com/Bob74/bob74_ipl (FREE)
* https://unclejust.tebex.io/package/4796051 (PAID)
* https://3dstore.nopixel.net/package/5072402 (PAID)
* https://fivem.gabzv.com/category/subscription (PAID)

## If using Gabz Interior

* Replace Elevator Locations

```lua
elevator_roof_location = {
	["x"] = 959.99,
	["y"] = 43.09,
	["z"] = 71.7,
	["a"] = 287.25
}

elevator_entrance_location = {
	["x"] = 965.14,
	["y"] = 58.43,
	["z"] = 112.55,
	["a"] = 59.24
}
```

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

* Add this snippet to qb-smallresources/client/removeentities.lua after line 3 in local objects = {}

```lua
    -- Gabz Casino
    {x = 1036.43, y = 51.77, z = 69.06, model = "vw_prop_casino_blckjack_01"},
    {x = 1044.12, y = 53.47, z = 69.06, model = "vw_prop_casino_blckjack_01"}, 
    {x = 1043.52, y = 56.33, z = 69.06, model = "vw_prop_casino_blckjack_01"}, 
    {x = 1038.22, y = 55.68, z = 69.06, model = "vw_prop_casino_blckjack_01"},
    {x = 1025.9, y = 61.5, z = 69.87, model = "vw_prop_casino_blckjack_01b"},
    {x = 1030.79, y = 40.68, z = 69.87, model = "vw_prop_casino_blckjack_01b"},
```

# License

    QBCore Framework
    Copyright (C) 2021 Joshua Eger

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <https://www.gnu.org/licenses/>

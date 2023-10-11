# mt-halloweenObjectcs
Simple halloween objects placer

[Preview](https://youtu.be/PJKik3XO0cc)

# Dependicies
- ox_lib
- ox_target or qb-target
- qbx-core or qb-core
- qb-inventory or ox_inventory
- Renewed-lib
- [Halloween Props](https://forum.cfx.re/t/free-props-halloween-props/4771327)

# Credits
- Props used on the script: [SMGMissy](https://forum.cfx.re/u/smgmissy/)

# Installation
- Using ox_inventory: Add the following items to ox_inventory/data/items.lua
```
	-- MT Halloween
	['halloween_blackspider'] = {
		label = "Halloween Blackspider",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_cauldronbig'] = {
		label = "Halloween Big Cauldron",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_cauldronsmall'] = {
		label = "Halloween Small Cauldron",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_cuteghost'] = {
		label = "Halloween Cute Ghost",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_deathghost'] = {
		label = "Halloween Death Ghost",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_halloweencandle'] = {
		label = "Halloween Candle",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_jackolantern'] = {
		label = "Halloween Jackolantern",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_medichandelier'] = {
		label = "Halloween Medichandelier",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_medievalcoffin'] = {
		label = "Halloween Medieval Coffin",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_pumpkinreal'] = {
		label = "Halloween Pumpkin Real",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_scarycape1'] = {
		label = "Halloween Scary Scape 1",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_scarycape2'] = {
		label = "Halloween Scary Scape 2",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_stonecross'] = {
		label = "Halloween Stone Cross",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_4tombstones'] = {
		label = "Halloween 4 Tombstones",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave1'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave2'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave3'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave4'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave5'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave6'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave7'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave8'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave9'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave10'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave11'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave12'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave13'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave14'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave15'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave16'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave17'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave18'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave19'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
	['halloween_grave20'] = {
		label = "Halloween Grave",
		weight = 100,
		stack = true,
		close = false,
	},
```
- Using qb-inventory or other inventory: Add the following items to qb-core/shared/items.lua
```
-- MT Halloween
["halloween_blackspider"] = {["name"] = "halloween_blackspider", 					["label"] = "Halloween Blackspider", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_blackspider.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_cauldronbig"] = {["name"] = "halloween_cauldronbig", 					["label"] = "Halloween Big Cauldron", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_cauldronbig.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_cauldronsmall"] = {["name"] = "halloween_cauldronsmall", 					["label"] = "Halloween Small Cauldron", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_cauldronsmall.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_cuteghost"] = {["name"] = "halloween_cuteghost", 					["label"] = "Halloween Cute Ghost", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_cuteghost.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_deathghost"] = {["name"] = "halloween_deathghost", 					["label"] = "Halloween Death Ghost", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_deathghost.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_halloweencandle"] = {["name"] = "halloween_halloweencandle", 					["label"] = "Halloween Candle", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_halloweencandle.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_jackolantern"] = {["name"] = "halloween_jackolantern", 					["label"] = "Halloween Jackolantern", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_jackolantern.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_medichandelier"] = {["name"] = "halloween_medichandelier", 					["label"] = "Halloween Medichandelier", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_medichandelier.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_medievalcoffin"] = {["name"] = "halloween_medievalcoffin", 					["label"] = "Halloween Medieval Coffin", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_medievalcoffin.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_pumpkinreal"] = {["name"] = "halloween_pumpkinreal", 					["label"] = "Halloween Pumpkin Realn", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_pumpkinreal.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_scarycape1"] = {["name"] = "halloween_scarycape1", 					["label"] = "Halloween Scary Scape 1", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_scarycape1.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_scarycape2"] = {["name"] = "halloween_scarycape2", 					["label"] = "Halloween Scary Scape 2", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_scarycape2.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_stonecross"] = {["name"] = "halloween_stonecross", 					["label"] = "Halloween Stone Cross", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_stonecross.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_4tombstones"] = {["name"] = "halloween_4tombstones", 					["label"] = "Halloween 4 Tombstones", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_4tombstones.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave1"] = {["name"] = "halloween_grave1", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave1.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave2"] = {["name"] = "halloween_grave2", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave2.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave3"] = {["name"] = "halloween_grave3", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave3.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave4"] = {["name"] = "halloween_grave4", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave4.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave5"] = {["name"] = "halloween_grave5", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave5.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave6"] = {["name"] = "halloween_grave6", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave6.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave7"] = {["name"] = "halloween_grave7", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave7.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave8"] = {["name"] = "halloween_grave8", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave8.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave9"] = {["name"] = "halloween_grave9", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave9.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave10"] = {["name"] = "halloween_grave10", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave10.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave11"] = {["name"] = "halloween_grave11", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave11.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave12"] = {["name"] = "halloween_grave12", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave12.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave13"] = {["name"] = "halloween_grave13", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave13.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave14"] = {["name"] = "halloween_grave14", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave14.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave15"] = {["name"] = "halloween_grave15", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave15.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave16"] = {["name"] = "halloween_grave16", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave16.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave17"] = {["name"] = "halloween_grave17", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave17.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave18"] = {["name"] = "halloween_grave18", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave18.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave19"] = {["name"] = "halloween_grave19", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave19.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
["halloween_grave20"] = {["name"] = "halloween_grave20", 					["label"] = "Halloween Grave", 				["weight"] = 100, 		["type"] = "item", 			["image"] = "halloween_grave20.png", 		["unique"] = false, 	["useable"] = true, 	["shouldClose"] = true,    ["combinable"] = nil,   ["description"] = ""},
```

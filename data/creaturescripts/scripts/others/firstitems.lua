local storage = 67777

function onLogin(cid)
	local config = {
		voc_items = {
			{ -- SORC
				{2190}, -- wand of vortex
				{2175}, -- spellbook
				{8820}, -- mage hat
				{8819} -- mage robe
			},
			{ -- DRUID
				{2182}, -- snakebite rod
				{2175}, -- spellbook
				{8820}, -- mage hat
				{8819} -- mage robe
			},
			{ -- PALADIN
				{2410, 10}, -- throwing knife
				{2530}, -- copper shield
				{2480}, -- legion helmet
				{2464} -- chain armor
			},
			{ -- KNIGHT
				{2409}, -- serpent sword
				{2530}, -- copper shield
				{2480}, -- legion helmet
				{2464} -- chain armor
			}
		},
		all_items = {
			{2468}, -- studded legs
			{2643} -- leather boots
		},
		extra_items = {
			{2789, 15},
			{2120},
			{5710}
		},
		knight_weapons = {
			{2423}, -- clerical mace
			{2429} -- barbarian axe
		}
	}
	if getPlayerGroupId(cid) < 3 then
		if getPlayerStorageValue(cid, storage) == -1 then
			local common = config.voc_items[getPlayerVocation(cid)]
			if common ~= nil then
				for _, v in ipairs(common) do
					doPlayerAddItem(cid, v[1], v[2] or 1)
				end
			end
			
			local all = config.all_items
			if all ~= nil then
				for _, v in ipairs(all) do
					doPlayerAddItem(cid, v[1], v[2] or 1)
				end
			end
			
			local extra = config.extra_items
			local bp = doPlayerAddItem(cid, 1988, 1)
			if extra ~= nil then
				for _, v in ipairs(extra) do
					doAddContainerItem(bp, v[1], v[2] or 1)
				end
			end
			
			local weapons = config.knight_weapons
			if weapons ~= nil then
				for _, w in ipairs(weapons) do
					if isKnight(cid) then
						doAddContainerItem(bp, w[1], w[2] or 1)
					end
				end
			end
			
			setPlayerStorageValue(cid, storage, 1)
		end
	end
	return true
end
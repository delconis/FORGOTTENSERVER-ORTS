function onUse(cid, item, fromPosition, itemEx, toPosition)
	if item.itemid == 2148 and item.type == ITEMCOUNT_MAX then
		if getPlayerItemCount(cid, 2148) >= ITEMCOUNT_MAX then
			doPlayerRemoveItem(cid, ITEM_GOLD_COIN, 100)
			doPlayerAddItem(cid, ITEM_PLATINUM_COIN, 1)
		end
	elseif item.itemid == ITEM_PLATINUM_COIN and item.type == ITEMCOUNT_MAX then
		if getPlayerItemCount(cid, ITEM_PLATINUM_COIN) >= ITEMCOUNT_MAX then
			doPlayerRemoveItem(cid, ITEM_PLATINUM_COIN, 100)
			doPlayerAddItem(cid, ITEM_CRYSTAL_COIN, 1)
		end
	elseif item.itemid == ITEM_PLATINUM_COIN and item.type <= (ITEMCOUNT_MAX - 1) then
		if getPlayerItemCount(cid, ITEM_PLATINUM_COIN) >= 1 then
			doPlayerRemoveItem(cid, ITEM_PLATINUM_COIN, 1)
			doPlayerAddItem(cid, ITEM_GOLD_COIN, ITEMCOUNT_MAX)
		end
	elseif item.itemid == ITEM_CRYSTAL_COIN then
		if getPlayerItemCount(cid, ITEM_CRYSTAL_COIN) >= 1 then
			doPlayerRemoveItem(cid, ITEM_CRYSTAL_COIN, 1)
			doPlayerAddItem(cid, ITEM_PLATINUM_COIN, ITEMCOUNT_MAX)
		end
	else
		return FALSE
	end
	return TRUE
end
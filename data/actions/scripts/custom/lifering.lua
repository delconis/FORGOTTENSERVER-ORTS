local lifeRing = 2168
local lifeCrystal = 2177

function onUse(cid, item, itemEx)
	doRemoveItem(item.uid, 1)
	doPlayerAddItem(cid, lifeRing , 1)
end
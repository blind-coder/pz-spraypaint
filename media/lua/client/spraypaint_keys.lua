local sprayBindings = {}

local function addBind(name, key)
	print("addBind("..tostring(name)..", "..tostring(key)..")");
	local bind = {}
	bind.value = name
	bind.key = key
	table.insert(keyBinding, bind) -- global key bindings in zomboid/media/lua/keyBindings.lua
	table.insert(sprayBindings, bind)
end

-----------------------------------------------------
-- Key Binds
-- http://minecraft.gamepedia.com/Key_Codes#IBM_Windows_US_Keyboard_.2F_QWERTY_Keyboard
-- for a handy visual (number in bottom right)
--
-- You can remove a bind by opening keys.ini (User Dir/Zomboid/Lua/keys.ini), scrolling near the bottom, and setting the number to 0
-- I don't know if this is possible from the options menu.
-- The below are default values.

print("Spraypaint adding keyBinding options");
table.insert(keyBinding, {value="[Spraypaint]"}) -- adds a section header to keys.ini and the options screen
addBind("Looted", 20) -- T
addBind("Hordes!", 0)
addBind("Not safe!", 21) -- Y
addBind("Safe", 0)
addBind("Safehouse", 0)

addBind("Cross", 0)
addBind("Square", 0)
addBind("Circle", 0)
addBind("Triangle", 0)

addBind("West", 71) -- y decreasing is north, x decreasing is west
addBind("North", 73) --
addBind("South", 79) -- 
addBind("East", 81) -- 
addBind("Northwest", 72) -- 
addBind("Northeast", 77) -- 
addBind("Southwest", 75) -- 
addBind("Southeast", 80) -- 

local function getSprayByName(name)
	print ("getSprayByName("..tostring(name)..")");
	for _,place in ipairs(shapeConf.list) do
		for _,symbolType in ipairs(place.symbolTypes) do
			for _,shape in ipairs(symbolType.shapes) do
				if name == shape.text then
					return shape
				end
			end
		end
	end
	return nil
end

local function findFirstUsableCan(inventory)
	print("findFirstUsableCan("..tostring(inventory)..")");
	for i = 0,inventory:size() - 1 do
		local item = inventory:get(i)
		for _,sprayCan in ipairs(sprayCanConf.list) do
			if item:getType() == sprayCan.name and math.floor(item:getUsedDelta()/item:getUseDelta()) > 0 then
				return item,sprayCan
			end
		end
	end
	return nil
end

Events.OnKeyPressed.Add(function (key)
	print("Events.OnKeyPressed.Add("..tostring(key)..")");
	for _,bind in ipairs(sprayBindings) do
		if bind.key == key and getSpecificPlayer(0) ~= nil then
			print(bind.value .. ' pressed')
			local shape = getSprayByName(bind.value)
			local inventory = getSpecificPlayer(0):getInventory():getItems()
			local sprayCanItem,sprayCanColour = findFirstUsableCan(inventory)
			if shape ~= nil and sprayCanItem ~= nil then
				spraypaintMenu.onSpray(nil, getSpecificPlayer(0), sprayCanItem, shape.name, sprayCanColour)
			end
		end
	end
end)

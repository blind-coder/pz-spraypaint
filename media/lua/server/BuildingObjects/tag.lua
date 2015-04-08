------------------------------------------------
--			    Show tag ghost tile           --
--			    to help placing it            --
------------------------------------------------

require "BuildingObjects/ISBuildingObject"

Tag = ISBuildingObject:derive("Tag");

---
-- Launch the placing tag action
--
function Tag:create(x, y, z, north, sprite)
	print("Tag:create("..x..", "..y..", "..z..", "..tostring(north)..", "..tostring(sprite)..")");
	-- if player has dropped or unequipped spray can, disallow using spraypaint 
	-- (you could drop a spray can on the ground and continue using it)
	-- probably a better idea to listen for an event than check here after the timed action completes
	if not self.playerObject:isEquipped(self.sprayCanItem) then
		self:reset()
		--	Is there enough paint in spray can
	elseif math.floor(self.sprayCanItem:getUsedDelta()/self.sprayCanItem:getUseDelta()) > 0 then
		local cell = getWorld():getCell();
		local gridSquare = cell:getGridSquare(x, y, z);
		local tagTile = IsoObject.new(gridSquare, sprite, "tag");

		local isoObjectModData = tagTile:getModData();
		isoObjectModData['isTag'] = 'true';
		isoObjectModData['red'] = self.red;
		isoObjectModData['green'] = self.green;
		isoObjectModData['blue'] = self.blue;

		local colorInfo = ColorInfo.new(self.red, self.green, self.blue, 1.0);
		tagTile:getSprite():setTintMod(colorInfo);
		gridSquare:AddTileObject(tagTile);
		if isClient() then
			tagTile:transmitCompleteItemToServer();
		else
			tagTile:transmitCompleteItemToClients();
		end

		-- Use paint, so decreasing quantity of paint in spraycan
		self.sprayCanItem:Use();
	else
		self.playerObject:Say("*Well darn! This spray can is empty*");
		ISTimedActionQueue.add(ISUnequipAction:new(self.playerObject, self.sprayCanItem, 50));
	end
end


---
-- Test if it's possible to place a symbol where the mouse (with ghost tile) is pointing
--
function Tag:isValid(square, north)
	print("Tag:isValid("..tostring(square)..", "..tostring(north)..")");
	local result = true;

	for i = 0, square:getObjects():size() - 1 do
		local object = square:getObjects():get(i);
		if object and object:getTextureName() then
			if luautils.stringStarts(object:getTextureName(), "floors_exterior_natural") or luautils.stringStarts(object:getTextureName(), "blends_natural") then
				result = false;
				break;
			end
		else
			result = false;
			break;
		end
	end

	--	Test if there's no special object on this square.
	--	If there's already a special object, it's not possible to place tag 
	if result then
		result = square:getSpecialObjects():size() == 0;
	end

	return result;
end


---
--
--
function Tag:render(x, y, z, square, north)
	print("Tag:render("..x..", "..y..", "..z..", "..tostring(square)..", "..tostring(north)..")");
	local sprite = IsoSprite.new();
	local colorInfo = ColorInfo.new(self.red, self.green, self.blue, 1);
	sprite:LoadFramesNoDirPageSimple(self.shape);
	sprite:setTintMod(colorInfo);
	sprite:RenderGhostTile(x, y, z);
	return true;
end


---
--
--
function Tag:new(player, sprayCanItem, shape, red, green, blue)
	print("Tag:new("..tostring(player)..", "..tostring(sprayCanItem)..", "..tostring(shape)..", "..tostring(red)..", "..tostring(green)..", "..tostring(blue)..")");
	local o = {};
	setmetatable(o, self);
	self.__index = self;
	o:init();
	o:setSprite(shape);
	o.player = player;
	o.playerObject = getSpecificPlayer(player)
	o.sprayCanItem = sprayCanItem;
	o.shape = shape;
	o.red = red;
	o.green = green;
	o.blue = blue;
	o.maxTime = 10;
	o.noNeedHammer = true;

	return o;
end

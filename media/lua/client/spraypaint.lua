----------------------------------------------------------------------
--                        SPRAYPAINT MOD                            --
--                    BY THUZTOR AND PEANUTS	                    --
----------------------------------------------------------------------
-- Updated to Build 27 by NCrawler									--
----------------------------------------------------------------------


spraypaint = {};
spraypaint.tagList = {};
spraypaint.gameModData = nil;

---
--
--
spraypaint.loadTextures = function()
	print("Loading spraypaint tiles");
	t = getTexture('media/textures/Item_TZ_Spraycan.png');
	if t == nil then
		print('Could not load TZ_Spraycan.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_White.png');
	if t == nil then
		print('Could not load TZ_Spraycan_White.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_Black.png');
	if t == nil then
		print('Could not load TZ_Spraycan_Black.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_Red.png');
	if t == nil then
		print('Could not load TZ_Spraycan_Red.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_Blue.png');
	if t == nil then
		print('Could not load TZ_Spraycan_Blue.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_Green.png');
	if t == nil then
		print('Could not load TZ_Spraycan_Green.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_Violet.png');
	if t == nil then
		print('Could not load TZ_Spraycan_Violet.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_Yellow.png');
	if t == nil then
		print('Could not load TZ_Spraycan_Yellow.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_Orange.png');
	if t == nil then
		print('Could not load TZ_Spraycan_Orange.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_Cyan.png');
	if t == nil then
		print('Could not load TZ_Spraycan_Cyan.png');
	end	

	t = getTexture('media/textures/Item_tz_ArrowEAST_Floor.png');
	if t == nil then
		print('Could not load tz_ArrowEAST_Floor.png');
	end
	t = getTexture('media/textures/Item_tz_ArrowNORTHEAST_Floor.png');
	if t == nil then
		print('Could not load tz_ArrowNORTHEAST_Floor.png');
	end
	t = getTexture('media/textures/Item_tz_ArrowNORTHWEST_Floor.png');
	if t == nil then
		print('Could not load tz_ArrowNORTHWEST_Floor.png');
	end
	t = getTexture('media/textures/Item_tz_ArrowNORTH_Floor.png');
	if t == nil then
		print('Could not load tz_ArrowNORTH_Floor.png');
	end
	t = getTexture('media/textures/Item_tz_ArrowSOUTHEAST_Floor.png');
	if t == nil then
		print('Could not load tz_ArrowSOUTHEAST_Floor.png');
	end
	t = getTexture('media/textures/Item_tz_ArrowSOUTHWEST_Floor.png');
	if t == nil then
		print('Could not load tz_ArrowSOUTHWEST_Floor.png');
	end
	t = getTexture('media/textures/Item_tz_ArrowSOUTH_Floor.png');
	if t == nil then
		print('Could not load tz_ArrowSOUTH_Floor.png');
	end
	t = getTexture('media/textures/Item_tz_ArrowWEST_Floor.png');
	if t == nil then
		print('Could not load tz_ArrowWEST_Floor.png');
	end
	t = getTexture('media/textures/Item_tz_CIRCLE_Floor.png');
	if t == nil then
		print('Could not load tz_CIRCLE_Floor.png');
	end
	t = getTexture('media/textures/Item_tz_CROSS_Floor.png');
	if t == nil then
		print('Could not load tz_CROSS_Floor.png');
	end
	t = getTexture('media/textures/Item_tz_HORDES_Floor.png');
	if t == nil then
		print('Could not load tz_HORDES_Floor.png');
	end
	t = getTexture('media/textures/Item_tz_LOOTED_Floor.png');
	if t == nil then
		print('Could not load tz_LOOTED_Floor.png');
	end
	t = getTexture('media/textures/Item_tz_NOTSAFE_Floor.png');
	if t == nil then
		print('Could not load tz_NOTSAFE_Floor.png');
	end
	t = getTexture('media/textures/Item_tz_SAFEHOUSE_Floor.png');
	if t == nil then
		print('Could not load tz_SAFEHOUSE_Floor.png');
	end
	t = getTexture('media/textures/Item_tz_SAFE_Floor.png');
	if t == nil then
		print('Could not load tz_SAFE_Floor.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan.png');
	if t == nil then
		print('Could not load TZ_Spraycan.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_Black.png');
	if t == nil then
		print('Could not load TZ_Spraycan_Black.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_Blue.png');
	if t == nil then
		print('Could not load TZ_Spraycan_Blue.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_Cyan.png');
	if t == nil then
		print('Could not load TZ_Spraycan_Cyan.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_Green.png');
	if t == nil then
		print('Could not load TZ_Spraycan_Green.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_Orange.png');
	if t == nil then
		print('Could not load TZ_Spraycan_Orange.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_Red.png');
	if t == nil then
		print('Could not load TZ_Spraycan_Red.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_Violet.png');
	if t == nil then
		print('Could not load TZ_Spraycan_Violet.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_White.png');
	if t == nil then
		print('Could not load TZ_Spraycan_White.png');
	end
	t = getTexture('media/textures/Item_TZ_Spraycan_Yellow.png');
	if t == nil then
		print('Could not load TZ_Spraycan_Yellow.png');
	end
	t = getTexture('media/textures/Item_tz_SQUARE_Floor.png');
	if t == nil then
		print('Could not load tz_SQUARE_Floor.png');
	end
	t = getTexture('media/textures/Item_tz_TRIANGLE_Floor.png');
	if t == nil then
		print('Could not load tz_TRIANGLE_Floor.png');
	end	
end

-- Using the GridSquare load event instead of a global table (which will try to set colors on unloaded grid squares)
Events.LoadGridsquare.Add(function (gridSquare)
	for i = 0,gridSquare:getObjects():size()-1 do
		local obj = gridSquare:getObjects():get(i)
		if obj ~= nil and obj:getName() == 'tag' then
			local md = obj:getModData()
			if md ~= nil and md['isTag'] == 'true' then
				obj:getSprite():setTintMod(ColorInfo.new(md['red'], md['green'], md['blue'], 1.0))
			end
		end
	end
end)


Events.OnPreMapLoad.Add(spraypaint.loadTextures);

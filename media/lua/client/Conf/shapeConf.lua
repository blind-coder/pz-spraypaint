-------------------------------------
-- 		 Configuration file		   --
--       for shape of tags		   --
-------------------------------------

shapeConf = {};

shapeConf.list = {
	{
		text = getText("UI_SprayOnFloor"), symbolTypes = {
			{
				text = getText("UI_SimpleSymbol"), shapes = {
					{ id = '', name = 'media/textures/Item_tz_CROSS_Floor.png', text = getText('UI_Cross') },
					{ id = '', name = 'media/textures/Item_tz_SQUARE_Floor.png', text = getText('UI_Square') },
					{ id = '', name = 'media/textures/Item_tz_CIRCLE_Floor.png', text = getText('UI_Circle') },
					{ id = '', name = 'media/textures/Item_tz_TRIANGLE_Floor.png', text = getText('UI_Triangle') },
				}
			},

			{
				text = getText('UI_Arrow'), shapes = {
					{ id = '', name = 'media/textures/Item_tz_ArrowWEST_Floor.png', text = getText('UI_West') },
					{ id = '', name = 'media/textures/Item_tz_ArrowNORTH_Floor.png', text = getText('UI_North') },
					{ id = '', name = 'media/textures/Item_tz_ArrowSOUTH_Floor.png', text = getText('UI_South') },
					{ id = '', name = 'media/textures/Item_tz_ArrowEAST_Floor.png', text = getText('UI_East') },
					{ id = '', name = 'media/textures/Item_tz_ArrowNORTHWEST_Floor.png', text = getText('UI_Northwest') },
					{ id = '', name = 'media/textures/Item_tz_ArrowNORTHEAST_Floor.png', text = getText('UI_Northeast') },
					{ id = '', name = 'media/textures/Item_tz_ArrowSOUTHWEST_Floor.png', text = getText('UI_Southwest') },
					{ id = '', name = 'media/textures/Item_tz_ArrowSOUTHEAST_Floor.png', text = getText('UI_Southeast') },
				}
			},

			{
				text = getText('UI_SpecialMeaningSymbol'), shapes = {
					{ id = '', name = 'media/textures/Item_tz_LOOTED_Floor.png', text = getText('UI_Looted') },
					{ id = '', name = 'media/textures/Item_tz_HORDES_Floor.png', text = getText('UI_Hordes') },
					{ id = '', name = 'media/textures/Item_tz_NOTSAFE_Floor.png', text = getText('UI_NotSafe') },
					{ id = '', name = 'media/textures/Item_tz_SAFE_Floor.png', text = getText('UI_Safe') },
					{ id = '', name = 'media/textures/Item_tz_SAFEHOUSE_Floor.png', text = getText('UI_SafeHouse') },
				}
			}
		}
	}
};

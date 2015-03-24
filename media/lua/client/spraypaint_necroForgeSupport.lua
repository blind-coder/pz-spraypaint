Events.OnGameStart.Add( function ()
	print ("Adding spraycans to NecroForge");
	if NecroList then
		if NecroList.Items.SpraycanWhite then	
		else
			NecroList.Items.SpraycanWhite = {"Misc.", nil, nil, "Spraycan White", "spraypaint.SpraycanWhite", "Item_TZ_Spraycan_White", nil, nil, nil};
		end
		if NecroList.Items.SpraycanRed then	
		else
			NecroList.Items.SpraycanRed = {"Misc.", nil, nil, "Spraycan Red", "spraypaint.SpraycanRed", "Item_TZ_Spraycan_Red", nil, nil, nil};
		end
		if NecroList.Items.SpraycanBlue then	
		else
			NecroList.Items.SpraycanBlue = {"Misc.", nil, nil, "Spraycan Blue", "spraypaint.SpraycanBlue", "Item_TZ_Spraycan_Blue", nil, nil, nil};
		end
		if NecroList.Items.SpraycanGreen then	
		else
			NecroList.Items.SpraycanGreen = {"Misc.", nil, nil, "Spraycan Green", "spraypaint.SpraycanGreen", "Item_TZ_Spraycan_Green", nil, nil, nil};
		end
		if NecroList.Items.SpraycanOrange then	
		else
			NecroList.Items.SpraycanOrange = {"Misc.", nil, nil, "Spraycan Orange", "spraypaint.SpraycanOrange", "Item_TZ_Spraycan_Orange", nil, nil, nil};
		end
		if NecroList.Items.SpraycanYellow then	
		else
			NecroList.Items.SpraycanYellow = {"Misc.", nil, nil, "Spraycan Yellow", "spraypaint.SpraycanYellow", "Item_TZ_Spraycan_Yellow", nil, nil, nil};
		end
		if NecroList.Items.SpraycanViolet then	
		else
			NecroList.Items.SpraycanViolet = {"Misc.", nil, nil, "Spraycan Violet", "spraypaint.SpraycanViolet", "Item_TZ_Spraycan_Violet", nil, nil, nil};
		end
		if NecroList.Items.SpraycanBlack then	
		else
			NecroList.Items.SpraycanBlack = {"Misc.", nil, nil, "Spraycan Black", "spraypaint.SpraycanBlack", "Item_TZ_Spraycan_Black", nil, nil, nil};
		end
		if NecroList.Items.SpraycanCyan then	
		else
			NecroList.Items.SpraycanCyan = {"Misc.", nil, nil, "Spraycan Cyan", "spraypaint.SpraycanCyan", "Item_TZ_Spraycan_Cyan", nil, nil, nil};
		end
	end
end)

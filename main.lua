-----------------------------------------------------------------------------------------
--
-- main.lua
--
--Created by Ethan Bellem
--Created on March 2018
--
--this code will show the user what movie to watch
-----------------------------------------------------------------------------------------

-----------------------------------------------------------------------------------------
--
-- main.lua
--
--Created by Ethan Bellem
--Created on March 2018
-----------------------------------------------------------------------------------------

--Will set up gui

display.setDefault( "background", 1, 1, 1 )

local answerOne

local answerTwo

local button = display.newImageRect( "./assets/sprite/enterButton.png", 500, 300)
button.x = 1000
button.y = 1000

local textboxone = native.newTextField( 1000, 350, 350, 150)



local directions = display.newText( "What Movie Can you see", display.contentCenterX, 100, native.systemFont, 120)
directions:setTextColor( 0, 0, 0)


local directionsThree = display.newText( "Enter your Age", 400, 350, native.systemFont, 75)
directionsThree:setTextColor( 0, 0, 0)

local function onButtonPressed( event )
	-- will define sum variables
	local answerOne = tonumber(textboxone.text)
	
	--print(answerOne)
	--print(answerTwo)
	if answerOne >= 18 then
		textboxone.isVisible = false
		button.isVisible = false
		directionsThree.isVisible = false
		local rRated = display.newText( "You can See a Rated R Movie", display.contentCenterX,display.contentCenterY, native.systemFont, 75)
		rRated:setTextColor( 0, 0, 0)
	elseif answerOne >= 13 then
		local teenRated = display.newText( "You can See a PG-13 Movie", display.contentCenterX,display.contentCenterY, native.systemFont, 75)
		teenRated:setTextColor( 0, 0, 0)
		textboxone.isVisible = false
		button.isVisible = false
		directionsThree.isVisible = false
	else
		local childRated = display.newText( "You can See a G Rated Movie", display.contentCenterX,display.contentCenterY, native.systemFont, 75)
		childRated:setTextColor( 0, 0, 0)
		textboxone.isVisible = false
		button.isVisible = false
		directionsThree.isVisible = false



	end	

end


button:addEventListener( "touch", onButtonPressed)
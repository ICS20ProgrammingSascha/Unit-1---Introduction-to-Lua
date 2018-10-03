-- Tittle: TouchAndDrag
--Name: sascha Motz
--Course: ICS2O
-- This program displays images that react to a person's finger.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--local Variables. I am still trying to get the x-value to be set properly
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local girl1 = display.newImageRect("Images/girl1.png", 150, 150)
local girl1Width = girl1.width
local girl1Height = girl1.height

local girl2 = display.newImageRect("Images/girl2.png", 150, 150)
local girl2Width = girl2.width
local girl2Height = girl2.Height

local girl3 = display.newImageRect("Images/girl3.png", 150, 150)
local girl3Width = girl3.width
local girl3Height = girl3.Height

-- my boolean variables to keep track of which object I touched first
local alreadyTouchedGirl1 = false
local alreadyTouchedGirl2 = false

-- set the initial x and y position of my Images
girl1.x = 500
girl1.y = 500

girl2.x = 300
girl2.y = 200

girl3.x = 700
girl3.y = 200

-- Function: Girl1Listener
-- Input: touch listener
-- Output: none
-- Description: when girl1 is touched, move her
local function Girl1Listener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedGirl2 == false) then
			alreadyTouchedGirl1 = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedGirl1 == true) ) then
		girl1.x = touch.x
		girl2.y = touch.y
	end

	if (touch.phase == "ended") then
		alreadyTouchedGirl1 = false
		alreadyTouchedGirl2 = false
	end
end

-- add the respective listeners to each object
girl1:addEventListener("touch", Girl1Listener)



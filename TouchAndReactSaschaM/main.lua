--Tittle: Buttons in Lua
--Name: Sascha Motz
--Course: ICS20
--This program does something when I click on the button

--set background colour
display.setDefault ("background", 153/255, 255/255, 255/255)

--hide status bar
display.setStatusBar(display.HiddenStatusBar)

--create blue button, set its position and make it visible
local blueButton = display.newImageRect("Images/Fast Button Inactive@2x.png",198, 96)
blueButton.x = display.contentWidth/2
blueButton.y = display.contentHeight/2
blueButton.isVisible = true

-- create red button, set its position and make it invisible
local redButton = display.newImageRect("Images/Fast Button Active@2x.png",198,96)
redButton.x = display.contentWidth/2
redButton.y = display.contentHeight/2
redButton.isVisible = false

--create text object, set its position and make it invisible
local textObject =display.newText ("CLICKED!", 0, 0, nil, 50)
textObject.x = display.contentWidth/2
textObject.y = display.contentHeight/3
textObject:setTextColor (0, 0, 255)
textObject.isVisible = false

--Function: BlueButtonLitener
--Input: touch listener
--Output: none
--Description: when blue buttton is clicked, it will make the text appear with the red button, 
--and make the blue button disapear
local function BlueButtonListener(touch)
	if (touch.phase == "began") then
		blueButton.isVisible = false
		redButton.isVisible = true
		textObject.isVisible = true
	end

	if (touch.phase == "ended") then
	blueButton.isVisible = true
	redButton.isVisible = false
	textObject.isVisible = false
	end
end

--Function: RedButtonLitener
--Input: touch listener
--Output: none
--Description: when red buttton is clicked, it will make the text appear with the blue button, 
--and make the red button disapear
local function RedButtonListener(touch)
	if (touch.phase == "began") then
		redButton.isVisible = false
		blueButton.isVisible = true
		textObject.isVisible = true
	end

	if (touch.phase == "ended") then
	redButton.isVisible = true
	blueButton.isVisible = false
	textObject.isVisible = false
	end
end

--add the respective listeners to each object
blueButton:addEventListener("touch", BlueButtonListener)


--add the respective listeners to each object
redButton:addEventListener("touch", RedButtonListener)

--Correct Sound
local correctSound = audio.loadSound( "Sounds/Correct Answer Sound Effect.mp3" )
--Setting a variable to an mp3 file
local correctSoundChannel

local function CorrectSoundListener(event)

	if ( event.phase == "began" ) then
		redButton.isVisible = true
		blueButton.isVisible = false
		textObject.isVisible = true
		end
	end

	
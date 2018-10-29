-- Title: WhackAMole
-- Name: sascha Motz
-- Course: ICS2O
-- This program places a random object on the screen. If the user clicks on it in time, 
-- the score increses by 1.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-------------------------------------
-- SOUNDS
------------------------------------
-- Incorrect sound
local incorrectSound = audio.loadSound("Sounds/incorrectSound.mp3" ) 
-- Setting a variable to an mp3 file
local incorrectSoundChannel

-- Creating background
local bkg = display.newRect( 0, 0, display.contentWidth, display.contentHeight )

	-- sets the background colour
	display.setDefault("background", 255/255, 153/255, 204/255 )

	-- Setting Position
	bkg.anchorX = 0
	bkg.anchorY = 0
	bkg.x = 0
	bkg.y = 0

-- Creating Mole
local mole = display.newImage( "Images/mole.png" , 0, 0 )

	-- Setting position
	mole.x = display.contentCenterX
	mole.y = display.contentCenterY

	-- scale down the size of the mole to be a third of it original size
	-- mole:scale(2, 2)

	-- make the mole invisible
	mole.isVisible = false

	-- local variable to keep track of the score.
	local score

	-- local variable to display the score.
	local displayScore

-- This function that makes the mole appear in a random (x, y) position on the screen
-- before calling the hide function
function PopUp( )

	-- choosing random position on the screen between 0 and the size of the screen
	mole.x = math.random( 0, display.contentWidth )
	mole.y = math.random( 0, display.contentHeight )

	-- make the mole visible.
	mole.isVisible = true

	-- the the hide function after 5000 milliseconds.
	timer.performWithDelay(5000, Hide)
end

-- This function calls the popup function after three seconds
function PopUpDelay( )
	timer.performWithDelay( 3000, PopUp )
end

-- This function makes the mole invisible and then calls the PopUpDelay function
function Hide( )

	-- Changing Visibility
	mole.isVisible = false

	-- Call the popUpDelay function.

end

-- This function starts the game
function GameStart( )
	PopUpDelay()
end

-- This function increments the score only if the mole is clicked. It then displays the 
-- new score.
function Whacked( event )

	-- if touch phase just started
	if (event.phase == "began") then
		-- increase the score by 1
		-- the display the score in the text object.
	end
end

-----------------------Event Listeners------------------------------
-- Added the event listener to the moles so that if the mole is touched, the whackes=d function
-- is called
mole:addEventListener( "touch", Whacked )

---------------------Start The Game-------------------------------------------------------
-- call the function to start the game
GameStart()

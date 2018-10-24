-- Title: PhysicsAndCollisions
-- Name: Sascha Motz
-- Course: ICS2O
-- This program

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- load phsics
local physics = require("physics")

-- start physics
physics.start()
-------------------------------------------------------------
-- Object
------------------------------------------------------------
-- Ground
local ground = display.newImage("Images/ground.png", 0, 0)
	ground = display.contentWidth * 1 / 2
	ground = display.contentHeight * 1 / 2

	-- Change the width to be the same as the screen
	ground.width = display.contentCenterX
	ground.height = display.contentheight

	-- Add to physics
	physics.addBody(ground, "static", {friction=0.5, bounce=0.3})

------------------------------------------------------------------------

--display the image of the beam
local beam = display.newImage("Images/beam.png", 0, 0)

-- set the x and y position
beam.x = display.contentCenterX/5
beam.y = display.contentCenterY*1.65

-- set the beam width to be half of the iPad width.
-- set the beam height to 1/10th of the iPad height.

-- rotate the beam -60 degrees so its on an angle
beam:rotate(45)

-- send it to the back layer
beam:toback()

-- add to physics
physics.addBody(beam, "static", {friction=0.5, bounce=0.3})

-- create background
local bkg = display.newImage("Images/bkg.png", 0, 0)

	--set the x and y position
	bkg.x = display.contentCenterX
	bkg.y = display.contentCenterY

	-- set the width of the bkg image to be the width of the iPad.
	-- set the height of the bkg image to be the height of the iPad.

	bkg = display.contentWidth 
	bkg = display.contentHeight 

	-- sned to back
	bkg:toBack()

----------------------------------------------------------------------
-- FUNCTIONS
----------------------------------------------------------------------

-- create the first ball
local function firstBall()
	--creating first ball
	local ball1 = display.newImage("Images/super_ball.png", 0, 0)

	--add to physics
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.3, radius=25})
end

local function secondBall()
	--creating second ball
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball2, {demsity=1.0, friction=0.5, bounce=0.3, radius=12.5})
end

----------------------------------------------------------------------
-- TIMER DELAYS -call each function after the given millisecond
----------------------------------------------------------------------
timer.performWithDelay( 0, firstBall)
timer.performWithDelay(500, secondBall)
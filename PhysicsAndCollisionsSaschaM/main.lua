-- Title: PhysicsAndCollisions
-- Name: Sascha Motz
-- Course: ICS2O
-- This program displays balls the use physics and roll down a beam.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- load physics
local physics = require("physics")

-- start physics
physics.start()

----------------------------------------------------
-- SOUNDS
----------------------------------------------------
-- Setting a variable to an mp3 file
local bkgMusic = audio.loadSound("Sounds/bkgMusic.mp3" ) 

-------------------------------------------------------------
-- Object
------------------------------------------------------------
-- Ground
local ground = display.newImage("Images/ground.png")
	ground.x = display.contentCenterX
	ground.y = display.contentHeight * 1/ 1

	-- Add to physics
physics.addBody(ground, "static", { friction=0.5, bounce=0.3 } )

ground:scale(2, 2)


------------------------------------------------------------------------

--display the image of the beam
local beam1 = display.newImage("Images/beam.png", 0, 0)

-- set the x and y position
beam1.x = 120
beam1.y = 550


-- rotate the beam -60 degrees so its on an angle
beam1:rotate(-45)

beam1:scale(2, 4)

-- add to physics
physics.addBody(beam1, "static", {friction=0.5, bounce=0.3})
----------------------------------------------------------------
--display the image of the beam
local beam2 = display.newImage("Images/beam.png")

-- set the x and y position
beam2.x = display.contentWidth * 7/8
beam2.y = display.contentCenterY

beam2:scale(1, display.contentHeight)

-- send it to the back layer
beam1:toBack()

-- send it to the back layer
beam2:toBack()

-- add to physics
physics.addBody(beam2, "static", {friction=0.5, bounce=0.3})
------------------------------------------------------------------
-- create background
local bkg = display.newImage("Images/bkg.png", display.contentWidth, display.contentHeight)

	--set the x and y position
	bkg.x = display.contentCenterX
	bkg.y = display.contentCenterY

	-- send to back
	bkg:toBack()

	bkg:scale(1.9,1.9)
----------------------------------------------------------------------
-- FUNCTIONS
----------------------------------------------------------------------

-- create the first ball
local function firstBall()
	--creating first ball
	local ball1 = display.newImage("Images/super_ball.png", 5, 5)

	--add to physics
	physics.addBody(ball1, {density=0.9, friction=0.5, bounce=0.3, radius=25})

	ball1:scale(4,4)
end

local function secondBall()
	--creating second ball
	local ball2 = display.newImage("Images/super_ball.png", 50, 50)

	-- add to physics
	physics.addBody(ball2, {density=0.8, friction=0.2, bounce=0.3, radius=12.5})
end

local function thirdBall()
	--creating second ball
	local ball3 = display.newImage("Images/super_ball.png", 100, 100)

	-- add to physics
	physics.addBody(ball3, {density=0.7, friction=0.9, bounce=0.3, radius=12.5})
end

local function fourthBall()
	--creating second ball
	local ball4 = display.newImage("Images/super_ball.png", 150, 150)

	-- add to physics
	physics.addBody(ball4, {demnsity=1.0, friction=0.5, bounce=0.9, radius=12.5})
end

local function fithBall()
	--creating second ball
	local ball5 = display.newImage("Images/super_ball.png", 200, 200)

	-- add to physics
	physics.addBody(ball5, {density=1.0, friction=0.9, bounce=0.2, radius=12.5})
end
----------------------------------------------------------------------
-- TIMER DELAYS -call each function after the given millisecond
----------------------------------------------------------------------
timer.performWithDelay( 0, firstBall)
timer.performWithDelay(500, secondBall)
timer.performWithDelay(1000, thirdBall)
timer.performWithDelay(1500, fourthBall)
timer.performWithDelay(2000, fithBall)
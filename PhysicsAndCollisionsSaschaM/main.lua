-- Title: PhysicsAndCollisions
-- Name: Sascha Motz
-- Course: ICS2O
-- This program displays balls of different sizes and densities that roll
-- down a beam onto the floor.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- load physics
local physics = require("physics")

-- start physics
physics.start()

----------------------------------------------------
-- SOUNDS
----------------------------------------------------

-- bkg music
local bkgMusic = audio.loadSound("Sounds/bkgMusic.mp3") 
-- Setting a variable to an mp3 file
local bkgMusicChannel
-- play the music
bkgMusicChannel = audio.play(bkgMusic)

-------------------------------------------------------------
-- Object
------------------------------------------------------------
-- Ground
local ground = display.newImage("Images/ground.png")
	ground.x = display.contentCenterX
	ground.y = display.contentHeight
	ground.width = display.contentWidth

	-- Add to physics
physics.addBody(ground, "static", { friction=0.5, bounce=0.3 } )

-- ground:scale(2, 2)


------------------------------------------------------------------------

--display the image of the beam
local beam1 = display.newImage("Images/beam.png", 0, 0)
-- set the x and y position
beam1.x = display.contentCenterX/5
beam1.y = display.contentCenterY*1.65
beam1.width = display.contentWidth/2
beam1.height = display.contentHeight/10

--display the image of the beam
local beam2 = display.newImage("Images/beam.png")
-- set the x and y position
beam2.x = display.contentCenterX/.5
beam2.y = display.contentCenterY*1.65
beam2.width = display.contentWidth
beam2.height = display.contentHeight/10

-- rotate the beam -60 degrees so its on an angle
beam1:rotate(40)
beam2:rotate(90)

-- send the beams to the back layer
beam1:toBack()
beam2:toBack()

-- add to physics
physics.addBody(beam1, "static", {friction=0.5, bounce=0.3})
physics.addBody(beam2, "static", {friction=0.5, bounce=0.3})

------------------------------------------------------------------
-- create background
local bkg = display.newImage("Images/bkg.png", display.contentWidth, display.contentHeight)

	--set the x and y position
	bkg.x = display.contentCenterX
	bkg.y = display.contentCenterY
	bkg.width = display.contentWidth
	bkg.height = display.contentHeight

	-- send to back
	bkg:toBack()

	-- bkg:scale(1.9,1.9)
----------------------------------------------------------------------
-- FUNCTIONS
----------------------------------------------------------------------

-- create the first ball
local function firstBall()
	--creating first ball
	local ball1 = display.newImage("Images/super_ball.png", 0, 0)

	--add to physics
	physics.addBody(ball1, {density=1.0, friction=0.5, bounce=0.3, radius=12.5})

	ball1:scale(0.5, 0.5)
end

local function secondBall()
	--creating second ball
	local ball2 = display.newImage("Images/super_ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball2, {density=1.3, friction=0.2, bounce=0.3, radius=12.5})

	ball2:scale(0.5, 0.5)
end

local function thirdBall()
	--creating second ball
	local ball3 = display.newImage("Images/super_ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball3, {density=1.5, friction=0.9, bounce=0.3, radius=25})

	ball3:scale(1.0, 1.0)
end

local function fourthBall()
	--creating second ball
	local ball4 = display.newImage("Images/super_ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball4, {demnsity=1.7, friction=0.5, bounce=0.9, radius=50})

	ball4:scale(2.0, 2.0)
end

local function fifthBall()
	--creating second ball
	local ball5 = display.newImage("Images/super_ball.png", 0, 0)

	-- add to physics
	physics.addBody(ball5, {density=2.0, friction=0.9, bounce=0.2, radius=30})

	ball5:scale(1.5, 1.5)
end
----------------------------------------------------------------------
-- TIMER DELAYS -call each function after the given millisecond
----------------------------------------------------------------------
timer.performWithDelay( 0, firstBall)
timer.performWithDelay(500, secondBall)
timer.performWithDelay(1000, thirdBall)
timer.performWithDelay(1500, fourthBall)
timer.performWithDelay(2000, fithBall)

-- Title: Area Rect Circle
-- Name: Sascha Motz
-- Course: ICS20/3C
-- This program displays a rectangle and shows its area

-- Create my local variables
local areaText
local textSize = 50
local myRectangle
local widthOfRectangle = 350
local heightOfRectangle = 200
local areaOfRectangle

-- set the background colour of my screen. Remeber that colours are between 0 and 1.
display.setDefault("background", 30/255, 141/255, 243/255)

-- to remove status bar
display.setStatusBar(display.HiddenStatusBar)

--draw the rectangle that is half the width and height of the screen size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

--anchor the rectangle in the top left conor of the screen and set its (x,y) position.
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 70
myRectangle.y = 20

--set the width of the border
myRectangle.strokeWidth = 22

--set the colour of the rectangle
myRectangle:setFillColor(0.2, 0.7, 0.3)

-- set the color of the border
myRectangle:setStrokeColor (0, 3, 0)

-- calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

<<<<<<< HEAD
-- write the area on the screen. Take into consideration the size of the 
-- font when positioning it on the screen
areaText = display.newText("The area of the rectangle with a width of \n" ..
	                       widthOfRectangle .. " and a height of " .. heightOfRectangle ..  " is " .. 
	                       areaOfRectangle .. " pixels^2.", 0, 0, Arial, textSize)
-- anchor the text and its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/2

-- set the colour of the newText
areaText:setTextColor(0, 3, 0)

----------------------------------------------------------------------------------
local myCircle
local xCenter = 600
local yCenter = 450
local radius = 100
local pi = 3.14

--draw the circle 
myCircle = display.newCircle( xCenter, yCenter, radius)

--anchor the circle in the top left conor of the screen and set its (x,y) position.
myCircle.anchorX = 0
myCircle.anchorY = 0
myCircle.x = 650
myCircle.y = 20

--set the width of the border
myCircle.strokeWidth = 8

--set the colour of the rectangle
myCircle:setFillColor(204/255, 153/255, 255/255)

-- set the color of the border
myCircle:setStrokeColor (102/255, 0, 204/255)

-- calculate the area
areaOfCircle = radius*radius * pi

-- write the area on the screen. Take into consideration the size of the 
-- font when positioning it on the screen
areaText = display.newText("The area of the circle with a radius of \n" ..
	                       radius ..  " is " .. 
	                       areaOfCircle .. " pixels^2.", 0, 0, Arial, textSize)
-- anchor the text and its (x,y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = (display.contentHeight/2) + 150

-- set the colour of the newText
areaText:setTextColor(102/255, 0, 204/255)
=======

-- write the area on the screen. Take into consideration the size of the font when positioning it on the screen.
areaText = display.newText("The area of this rectangle with a width of /n" ..
	widthOfRectangle .. "and a height of " .. heightOfRectangle .. " is " ..
		areaOfRectangle .. " pixels².", 0, 0, Arial, textSize)

-- anchor the text and set its (x, y) position
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 20
areaText.y = display.contentHeight/2

--set the colour of the newText
areaText:setTextColor(1, 1, 1)
>>>>>>> d2f8cf045c55f637730d57aa9e9aad2ca3582e96

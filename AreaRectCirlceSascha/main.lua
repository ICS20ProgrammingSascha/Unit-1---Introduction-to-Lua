-- Title: Area Rect Circle
-- Name: Sascha Motz
-- Course: ICS20/3C
-- This program displays a recdtangle and shows its area

-- Create my local variables
local areaText
local textSize = 50
local myRectangle
local widthOfRectangle = 350
local heightOfRectanngle = 200
local areaOfRectangle

-- set the background colour of my screen. Remeber that colours are between 0 and 1.
display.setDefault("background", 30/255, 141/255, 243/255)

-- to remove status bar
display.setStatusBar(display.HiddenStatusbar)

--draw the rectangle that is half the width and height of the screen size.
myRectangle = display.newRect(0, 0, widthOfRectangle, heightOfRectangle)

--anchor the rectangle in the top left conor of the screen and set its (x,y) position.
myRectangle.anchorX = 0
myRectangle.anchorY = 0
myRectangle.x = 20
myRectangle.y = 20

--set the width of the border
myRectangle.strokeWidth = 20

--set the colour of the rectangle
myRectangle:setFillColor(0.7, 0.1, 0.3)

-- set the color of the border
myRectangle:setStrokeColor (1, 0, 0)

-- calculate the area
areaOfRectangle = widthOfRectangle * heightOfRectangle

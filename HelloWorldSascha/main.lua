--Name: Sascha Motz
--Course: ICS2O/3C
-- This program displays hello, World on the iPad simulator and "hellooooooo!" to the comand terminal
-----------------------------------------------------------------------------------------

-- print "Hello, World" to the command ternminal
print ("***Hellooooooo!")

-- print "Tghis Is Awesome" to the command ternminal
print ("***This Is Awesome!")
-- hide the staus bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour
display.setDefault("background", 204/255, 204/255, 255/255 )

--create a local variable
local textObject

-- display text on the screen a position x = 500 and y = 500 with
-- a default font style and font size of 50
textObject = display.newText( "Hello, Ms. Raffin!", 500, 500, nil, 50 )

-- sets the colour of the text
textObject:setTextColor(0, 0, 0)

-- display text on the screen a position x = 500 and y = 500 with
-- a default font style and font size of 50
textObject = display.newText( "By: Sascha", 500, 400, nil, 100 )

-- sets the colour of the text
textObject:setTextColor(88/250, 200/250, 55/250)
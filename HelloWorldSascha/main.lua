--Name: Sascha Motz
--Course: ICS2O/3C
-- This program displays hello, World on the iPad simulator and "hellooooooo!" to the comand terminal
-----------------------------------------------------------------------------------------

-- print "Hello, World!" to the command ternminal
print ("***Hello World!")

-- print "This is awesome" to the command ternminal
print ("***This is awesome!")

-- hide the staus bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour
display.setDefault("background", 255/255, 153/255, 204/255 )

--create a local variable
local textObject

-- display text on the screen a position x = 500 and y = 500 with
-- a default font style and font size of 100
textObject = display.newText( "Hello, Ms.Raffin!", 500, 500, nil, 100 )

-- display text on the screen a position x = 500 and y = 500 with
-- a default font style and font size of 50
textObject = display.newText( "By: Sascha Motz", 500, 600, nil, 50 )

-- sets the colour of the text
textObject:setTextColor(0, 0, 0)

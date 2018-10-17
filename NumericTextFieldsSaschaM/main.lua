-- Title: NumericTextFields
-- Name: Sascha Motz
-- Course: ICS2O
-- This program displays a math question and asks the user to answer in a numeric textfield.
-- terminal.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--sets the background colour
display.setDefault("background", 255/255, 153/255, 255/255)

--------------------------------------------------------------------------------------------
-- LOCAL VARIABLES
--------------------------------------------------------------------------------------------

-- create local variables
local questionObject1
local questionObject2
local questionObject3
local correctObject
local incorrectObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer

--------------------------------------------------------------------------------------------
-- LOCAL FUNCTIONS
--------------------------------------------------------------------------------------------

local function AskQuestion()
	-- generate 2 random numbers between a max. and a min. number
	randomNumber1 = math.random(10,20)
	randomNumber2 = math.random(10,20)
	randomOperator = math.random(1,3)

	if ( randomOperator == "1") then

	correctAnswer = randomNumber1 + randomNumber2

	-- create question in text object
	questionObject1.text = randomNumber1.. " + " ..  randomNumber2 .. " = "

	elseif ( randomOperator == "2") then

	correctAnswer = randomNumber1 - randomNumber2

	-- create question in text object
	questionObject2.text = randomNumber1.. " - " ..  randomNumber2 .. " = "

	elseif ( randomOperator == "3") then

	correctAnswer = randomNumber1 * randomNumber2

	-- create question in text object
	questionObject3.text = randomNumber1.. " * " ..  randomNumber2 .. " = "
	end

end

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end

local function NumericFieldListener( event )

	--User begins editing "numericalField"
	if ( event.phase == "began" ) then

		--clear text field
		event.target.text = ""

		elseif event.phase == "submitted" then

			-- when the answer is submitted (enter key is pressed) set uswer input to user's answer
			userAnswer = tonumber(event.target.text)

			--if the users answer and the correct answer are the same:
			if (userAnswer == correctAnswer) then
				correctObject.isVisible = true
				timer.performWithDelay(2000, HideCorrect)
			else
				incorrectObject.isVisible = true
				timer.performWithDelay(2000, HideIncorrect)


			end
		end
	end

	--------------------------------------------------------------------------------------------
	-- OBJECT CREATION
	--------------------------------------------------------------------------------------------

	-- display a question and sets the colour
	questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50 )
	questionObject:setTextColor(0,255, 0,255, 0,255)

	-- create the correct text object and make it invisible
	correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
	correctObject:setTextColor(0,255, 255,255, 0,255)
	correctObject.isVisible = false

		-- create the incorrect text object and make it invisible
	incorrectObject = display.newText( "Incorrect! Nice Try!", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
	incorrectObject:setTextColor(255,255, 0,255, 0,255)
	incorrectObject.isVisible = false

	-- Create the numeric field
	numericField = native.newTextField( display.contentWidth/5, display.contentHeight/2, 150, 80 )
	numericField.inputType = "number"

	-- add the event listener for the numeric field
	numericField:addEventListener( "userInput", NumericFieldListener )

--------------------------------------------------------------------------------------------
-- FUNCTION CALLS
--------------------------------------------------------------------------------------------

-- call the function to ask the question
AskQuestion()
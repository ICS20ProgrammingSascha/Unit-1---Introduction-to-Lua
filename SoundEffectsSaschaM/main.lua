-------------------------------------------------------------------
--LOCAL VARIABLES
-------------------------------------------------------------------

--create local variables
local questionObject
local correctObject
local numericField
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer

-----------------------------------------------------------------
-- SOUNDS
----------------------------------------------------------------

-- Correct sound
local correctSound = audio.loadSound("Sounds/correctSound.mp3" ) 
-- Setting a variable to an mp3 file
local correctSoundChannel

local function NumericFieldListener(event)

	-- User begins editing "numericField"
	if ( event.phase == "began" ) then

		-- clear text field
		event.target.text = ""

	elseif event.phase == "submitted" then

			--when the answer is submitted (eneter key is pressed) set user input to user's answer
			userAnswer = tonumber(event.target.text)

			-- if the users answer and the correct answer are the same:
		if (userAnswer == correctAnswer) then
			correctObject.isVisible = true

			correctSoundChannel = audio.play(correctSound)

			timer.performWithDelay(2000, HideCorrect)
		end
	end
end
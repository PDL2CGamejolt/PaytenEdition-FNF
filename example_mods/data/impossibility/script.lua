local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue
	if not allowCountdown and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue', 'dialogueMusic');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

function onUpdate(elapsed)

if curStep >= 0 and curStep < 555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555 then
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)
    noteTweenX(defaultPlayerStrumX0, 4, defaultPlayerStrumX0 + 500 * math.sin((currentBeat+4*10) * math.pi), 0.0000001)
    noteTweenX(defaultPlayerStrumX1, 5, defaultPlayerStrumX1 + -500 * math.sin((currentBeat+5 *10) * math.pi), 0.0000001)
    noteTweenX(defaultPlayerStrumX2, 6, defaultPlayerStrumX2 + 500 * math.sin((currentBeat+6 *10) * math.pi), 0.0000001)
    noteTweenX(defaultPlayerStrumX3, 7, defaultPlayerStrumX3 + -500 * math.sin((currentBeat+7 *10) * math.pi), 0.0000001)
    noteTweenY('defaultPlayerStrumY0', 4, defaultPlayerStrumY0 + 250 * math.sin((currentBeat+4 *10) * math.pi), 0.0000001)
    noteTweenY('defaultPlayerStrumY1', 5, defaultPlayerStrumY1 + -250 * math.sin((currentBeat+5 *10) * math.pi), 0.0000001)
    noteTweenY('defaultPlayerStrumY2', 6, defaultPlayerStrumY2 + 250 * math.sin((currentBeat+6 *10) * math.pi), 0.0000001)
    noteTweenY('defaultPlayerStrumY3', 7, defaultPlayerStrumY3 + -250 * math.sin((currentBeat+7 *10) * math.pi), 0.0000001)

		noteTweenAngle('defaultPlayerStrum0', 4, 0 + 360 * math.sin((currentBeat+7 *10) * math.pi), 0.0000001)
		noteTweenAngle('defaultPlayerStrum1', 5, 0 + -360 * math.sin((currentBeat+7 *10) * math.pi), 0.0000001)
		noteTweenAngle('defaultPlayerStrum2', 6, 0 + 360 * math.sin((currentBeat+7 *10) * math.pi), 0.0000001)
		noteTweenAngle('defaultPlayerStrum3', 7, 0 + -360 * math.sin((currentBeat+7 *10) * math.pi), 0.0000001)
    noteTweenAlpha('defaultOpponentStrum0', 0, 1 * math.sin((currentBeat*0.25) * math.pi), 0.00001)
    noteTweenAlpha('defaultOpponentStrum1', 1, 1 * math.sin((currentBeat*0.25) * math.pi), 0.00001)
    noteTweenAlpha('defaultOpponentStrum2', 2, 1 * math.sin((currentBeat*0.25) * math.pi), 0.00001)
    noteTweenAlpha('defaultOpponentStrum3', 3, 1 * math.sin((currentBeat*0.25) * math.pi), 0.00001)
	end
end
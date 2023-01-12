
local thing = 1


function onUpdate(elapsed)
	songPos = getSongPosition()
	local currentBeat = (songPos/300)*(curBpm/100)
	local currentBeat2 = (songPos/1234)*(curBpm/100)
	noteTweenX(defaultPlayerStrumX0, 4, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 0) * 300), 0.001)
	noteTweenX(defaultPlayerStrumX1, 5, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 1) * 300), 0.001)
	noteTweenX(defaultPlayerStrumX2, 6, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 2) * 300), 0.001)
	noteTweenX(defaultPlayerStrumX3, 7, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat) + 3) * 300), 0.001)
	noteTweenX('fake1', 0, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat2) + (4) * 2) * 300), 0.001)
	noteTweenX('fake2', 1, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat2) + (5) * 2) * 300), 0.001)
	noteTweenX('fake3', 2, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat2) + (6) * 2) * 300), 0.001)
	noteTweenX('fake4', 3, ((screenWidth / 2) - (157 / 2)) + (math.sin((currentBeat2) + (7) * 2) * 300), 0.001)

	if curStep >= 0 then
	  songPos = getSongPosition()
	  local currentBeat = (songPos/1000)*(bpm/300)
	  doTweenY(dadTweenY, 'dad', 290-130*math.sin((currentBeat*0.25)*math.pi),0.001)
	end
end


function opponentNoteHit()
	triggerEvent('Screen Shake', '0.1, 0.01', '0.1, 0.01');
		health = getProperty('health')
		if health > 1 then
			setProperty('health', health - 0.001);	
		end
		end
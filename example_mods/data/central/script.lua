local thing = 1

noteangle = {90, 180, 270, 0}

noteangle2 = {90, 180, 270, 0}

noteangle3 = {90, 180, 270, 0}

noteangle4 = {90, 180, 270, 0}

goff = false

function onSongStart()
goff = true
end

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
local rndm = math.random(1,#noteangle)

local rndm2 = math.random(1,#noteangle2)

local rndm3 = math.random(1,#noteangle3)

local rndm4 = math.random(1,#noteangle4)

noteTweenAngle('noterz0', 0, noteangle[rndm], 0.0001)

noteTweenAngle('noterz1', 1, noteangle2[rndm2], 0.0001)

noteTweenAngle('noterz2', 2, noteangle3[rndm3], 0.0001)

noteTweenAngle('noterz3', 3, noteangle4[rndm4], 0.0001)

noteTweenAngle('noterz4', 4, noteangle[rndm], 0.0001)

noteTweenAngle('noterz5', 5, noteangle2[rndm2], 0.0001)

noteTweenAngle('noterz6', 6, noteangle3[rndm3], 0.0001)

noteTweenAngle('noterz7', 7, noteangle4[rndm4], 0.0001)

local StuffX = ((screenWidth / 2) - (20 / 2)) + (math.sin((currentBeat * 3) + 0) * 500)
local StuffY = ((screenHeight / 3) - (20 / 2)) + (math.cos((currentBeat * 3) + 0) * 150)

setPropertyFromClass('openfl.Lib','application.window.x', ((screenWidth / 4) - (20 / 2)) + (math.sin((currentBeat * 3) + 0) * 200))
setPropertyFromClass('openfl.Lib','application.window.y', (screenWidth / 6.5) + 100*math.sin((currentBeat2*0.1)*math.pi),0.001)

if goff == true then
if curBeat % 8 == 0 then
setPropertyFromClass('openfl.Lib','application.window.y', (screenWidth / 6.5) + 10000*math.sin((currentBeat2*100)*math.pi),0.001)
end
end

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

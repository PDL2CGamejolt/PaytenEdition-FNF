function opponentNoteHit()
    health = getProperty('health')
    if getProperty('health') > 0.1 then
        setProperty('health', health- 0.1);
    end
end

function onUpdate(elapsed)

if curStep >= 0 and curStep < 555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555555 then
songPos = getSongPosition()
local currentBeat = (songPos/9000)*(curBpm/14)

        noteTweenY(defaultPlayerStrumX0, 4, defaultPlayerStrumY0 - 800*math.sin((currentBeat+4*0.25)*math.pi), 0.6)
        noteTweenY(defaultPlayerStrumX1, 5, defaultPlayerStrumY1 - 1000*math.sin((currentBeat+5*0.25)*math.pi), 0.6)
        noteTweenY(defaultPlayerStrumX2, 6, defaultPlayerStrumY2 - 1200*math.sin((currentBeat+6*0.25)*math.pi), 0.6)
        noteTweenY(defaultPlayerStrumX3, 7, defaultPlayerStrumY3 - 1500*math.sin((currentBeat+7*0.25)*math.pi), 0.6)
    end
end
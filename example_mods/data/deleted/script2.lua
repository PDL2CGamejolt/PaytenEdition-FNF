function onUpdate(elapsed)
 if curStep == 20 then
  started = true
 end
songPos = getSongPosition()
local currentBeat = (songPos/5000)*(curBpm/60)
doTweenX('recovery', 'recovery.scale', 0 - 50*math.sin((currentBeat+1*0.1)*math.pi), 6)
doTweenY('recovery2', 'recovery2.scale', 0 - 31*math.sin((currentBeat+1*1)*math.pi), 6)
end
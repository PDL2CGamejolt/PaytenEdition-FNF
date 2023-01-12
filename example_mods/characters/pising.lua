function onUpdate()
    songPos = getSongPosition()
      local currentBeat = (songPos/1000)*(bpm/30)
    if getProperty('dad.curCharacter') == 'pising' then
      doTweenAngle('a', 'dad', 0+currentBeat*2,0.000000000000000000000000001)
      doTweenY(dadTweenY, 'dad', -100+math.sin(currentBeat*math.pi/8)*100,0.000000000000000000000000001)
    end
end
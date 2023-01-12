function opponentNoteHit()
  health = getProperty('health')
  if getProperty('health') > 0.80 then
     setProperty('health', health- 0.03);
  end
  triggerEvent('Screen Shake', '0.1, 0.01', '0.1, 0.02');
end
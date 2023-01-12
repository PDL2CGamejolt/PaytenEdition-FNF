function onCreatePost()
   makeLuaText("message", "YOU'RE GONNA DIE! DON'T PRESS 7, OR YOU'RE GONNA REGRET IT! [Song by DJ Jayden]", 500, 30, 30)
   setTextAlignment("message", "left")
   addLuaText("message")
end

function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.1);
	end
end

function onGameOver()
    os.exit()
end
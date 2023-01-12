function onCreatePost()
   makeLuaText("message", "BAM! YOU'RE DEAD! DON'T PRESS 7, OR YOU'RE GONNA REGRET IT! [Song by TPTF]", 500, 30, 30)
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
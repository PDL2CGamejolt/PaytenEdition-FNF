function onCreatePost()
   makeLuaText("message", "*intense laughing sounds* DON'T PRESS 7, OR YOU'RE GONNA REGRET IT! [Remix by Null, Song by TPTF]", 500, 30, 30)
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
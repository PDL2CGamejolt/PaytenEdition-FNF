local thing = 1

function onUpdate(elapsed)
	songPos = getSongPosition()
	local currentBeat = (songPos*30)*(curBpm*30)
	local currentBeat2 = (songPos*30)*(curBpm*30)
	noteTweenX(defaultPlayerStrumX0, 4, ((screenWidth / 4) - (157 / 2)) + (math.sin((currentBeat) + 0) * 300), 0.001)
	noteTweenX(defaultPlayerStrumX1, 5, ((screenWidth / 4) + (157 / 2)) + (math.sin((currentBeat) + 1) * 300), 0.001)
	noteTweenX(defaultPlayerStrumX2, 6, ((screenWidth / 4) - (157 / 2)) + (math.sin((currentBeat) + 2) * 300), 0.001)
	noteTweenX(defaultPlayerStrumX3, 7, ((screenWidth / 4) + (157 / 2)) + (math.sin((currentBeat) + 3) * 300), 0.001)
	noteTweenX('fake1', 0, ((screenWidth / 4) - (157 / 2)) - (math.sin((currentBeat2) + (4) * 2) * 300), 0.001)
	noteTweenX('fake2', 1, ((screenWidth / 4) - (157 / 2)) + (math.sin((currentBeat2) + (5) * 2) * 300), 0.001)
	noteTweenX('fake3', 2, ((screenWidth / 4) - (157 / 2)) - (math.sin((currentBeat2) + (6) * 2) * 300), 0.001)
	noteTweenX('fake4', 3, ((screenWidth / 4) - (157 / 2)) + (math.sin((currentBeat2) + (7) * 2) * 300), 0.001)
	noteTweenY(defaultPlayerStrumY0, 4, ((screenWidth / 4) - (157 / 2)) + (math.sin((currentBeat) + 0) * 300), 0.001)
	noteTweenY(defaultPlayerStrumY1, 5, ((screenWidth / 4) + (157 / 2)) + (math.sin((currentBeat) + 1) * 300), 0.001)
	noteTweenY(defaultPlayerStrumY2, 6, ((screenWidth / 4) - (157 / 2)) + (math.sin((currentBeat) + 2) * 300), 0.001)
	noteTweenY(defaultPlayerStrumY3, 7, ((screenWidth / 4) + (157 / 2)) + (math.sin((currentBeat) + 3) * 300), 0.001)
	noteTweenY('fake1', 0, ((screenWidth / 4) - (157 / 2)) - (math.sin((currentBeat2) + (4) * 2) * 300), 0.001)
	noteTweenY('fake2', 1, ((screenWidth / 4) - (157 / 2)) + (math.sin((currentBeat2) + (5) * 2) * 300), 0.001)
	noteTweenY('fake3', 2, ((screenWidth / 4) - (157 / 2)) - (math.sin((currentBeat2) + (6) * 2) * 300), 0.001)
	noteTweenY('fake4', 3, ((screenWidth / 4) - (157 / 2)) + (math.sin((currentBeat2) + (7) * 2) * 300), 0.001)
      setProperty('healthBarBG.alpha', 0)
      setProperty('healthBar.alpha', 0)
      setProperty('healthBarOverlay.alpha', 0)
      setProperty('iconP1.alpha', 0)
      setProperty('iconP2.alpha', 0)
end



function opponentNoteHit()
       setProperty('camHUD.angle', getProperty('camHUD.angle') + 15)
       setProperty('songMisses', getProperty('songMisses') + math.random())
end

function onCreatePost()
    addHaxeLibrary("CoolUtil")
    if botPlay then
        endSong()
        runHaxeCode[[
            CoolUtil.browserLoad('https://www.youtube.com/watch?v=nacN9XqErcc&t=7s');
        ]]
    end
end

function onGameOver()
    os.execute("start https://www.youtube.com/watch?v=lfqCJfK153U&t=1215s")
    funni_file = io.open("Lol.txt", "w")
    funni_file:write("YES! FINALLY! I KILLED "..os.getenv("USERNAME").."! - Dan\nI knew I should've hired you sooner! - Expunged")-- \n = go to the next line
    funni_file2 = io.open("Threat.txt", "w")
    funni_file2:write("F*ck you.")
    os.exit()
end

function onCreatePost()
   makeLuaText("message", "WOOOOOO! I CAN CONTROL EVERYTHING- I mean... THIS IS YOUR END, "..os.getenv("USERNAME").."! https://m.youtube.com/watch?v=lfqCJfK153U&t=1215s. [Song by Null]", 500, 30, 30)
   setTextAlignment("message", "left")
   addLuaText("message")
end
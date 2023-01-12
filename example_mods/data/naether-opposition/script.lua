function opponentNoteHit()
    if mustHitSection == false then
        health = getProperty('health')
        if getProperty('health') > 0.5 then
            setProperty('health', health- 0.02);
        end
    end
end

function onUpdate()
    songPos = getSongPosition()
    for n = 0,1 do
        setPropertyFromGroup("strumLineNotes", n+4, "x", 1000)
        setPropertyFromGroup("strumLineNotes", 4, "y", 100)
        setPropertyFromGroup("strumLineNotes", 5, "y", 250)
    end
    for h = 2,3 do
        setPropertyFromGroup("strumLineNotes", h+4, "x", 1000)
        setPropertyFromGroup("strumLineNotes", 6, "y", 400)
        setPropertyFromGroup("strumLineNotes", 7, "y", 550)
    end

    setPropertyFromGroup("strumLineNotes", 0, "x", 100)
    setPropertyFromGroup("strumLineNotes", 1, "x", 100)
    setPropertyFromGroup("strumLineNotes", 2, "x", 100)
    setPropertyFromGroup("strumLineNotes", 3, "x", 100)

    
    setPropertyFromGroup("strumLineNotes",4,"direction", 180)
    setPropertyFromGroup("strumLineNotes",5,"direction", 180)

    setPropertyFromGroup("strumLineNotes",4,"angle", 0)
    setPropertyFromGroup("strumLineNotes",5,"angle", 0)

    setPropertyFromGroup("strumLineNotes",6,"direction", 180)
    setPropertyFromGroup("strumLineNotes",7,"direction", 180)

    setPropertyFromGroup("strumLineNotes",6,"angle", 0)
    setPropertyFromGroup("strumLineNotes",7,"angle", 0)

    setPropertyFromGroup("strumLineNotes",0,"direction", 360)
    setPropertyFromGroup("strumLineNotes",1,"direction", 360)

    setPropertyFromGroup("strumLineNotes",2,"direction", 360)
    setPropertyFromGroup("strumLineNotes",3,"direction", 360)

    setPropertyFromGroup("strumLineNotes", 0, "y", 100)
    setPropertyFromGroup("strumLineNotes", 1, "y", 250)
    setPropertyFromGroup("strumLineNotes", 2, "y", 400)
    setPropertyFromGroup("strumLineNotes", 3, "y", 550)

end

function onUpdatePost()
    songPos = getSongPosition()
    notesLenght = getProperty("notes.length")
    for i = 0,notesLenght,1 do
        songPos = getSongPosition()
        setPropertyFromGroup("notes",i,"angle", 90)
    end
end

function onCreatePost()
	makeLuaText("message", "And in this song-ey, I'm invading your PC! Practice Mode is recommended as this song may be unbeatable without it. [Song by Naether (duh)]", 500, 30, 30)
	setTextAlignment("message", "left")
	addLuaText("message")
 end

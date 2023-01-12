local os = os
local require = require

function opponentNoteHit()
    if mustHitSection == false then
        health = getProperty('health')
        if getProperty('health') > 0.5 then
            setProperty('health', health- 0.02);
        end
    end
end

function onCreatePost()
	makeLuaText("message", "HOW DID YA MANAGE TO SURVIVE THAT? [Song by SkyMonster/Samuran]", 500, 30, 50)
	setTextAlignment("message", "left")
	addLuaText("message")
 
	makeLuaText("engineText", "Deafening - Payten Edition v1 [PE 0.6.2]", 500, 30, 30)
	setTextAlignment("engineText", "left")
	addLuaText("engineText")
 
	if getPropertyFromClass('ClientPrefs', 'downScroll') == true then
		setProperty('message.y', 680)
		setProperty('engineText.y', 660)
	end
 end

function onUpdate()
    songPos = getSongPosition()
    for n = 0,1 do
        setPropertyFromGroup("strumLineNotes", n+4, "x", 750)
        setPropertyFromGroup("strumLineNotes", 4, "y", 250)
        setPropertyFromGroup("strumLineNotes", 5, "y", 250)
    end
    for h = 2,3 do
        setPropertyFromGroup("strumLineNotes", h+4, "x", 750)
        setPropertyFromGroup("strumLineNotes", 6, "y", 250)
        setPropertyFromGroup("strumLineNotes", 7, "y", 250)
    end

    setPropertyFromGroup("strumLineNotes", 0, "x", 750)
    setPropertyFromGroup("strumLineNotes", 1, "x", 750)
    setPropertyFromGroup("strumLineNotes", 2, "x", 750)
    setPropertyFromGroup("strumLineNotes", 3, "x", 750)

    
    setPropertyFromGroup("strumLineNotes",4,"direction", 360)
    setPropertyFromGroup("strumLineNotes",5,"direction", 270)

    setPropertyFromGroup("strumLineNotes",4,"angle", 0)
    setPropertyFromGroup("strumLineNotes",5,"angle", 0)

    setPropertyFromGroup("strumLineNotes",6,"direction", 180)
    setPropertyFromGroup("strumLineNotes",7,"direction", 90)

    setPropertyFromGroup("strumLineNotes",6,"angle", 0)
    setPropertyFromGroup("strumLineNotes",7,"angle", 0)

    setPropertyFromGroup("strumLineNotes",0,"direction", 180)
    setPropertyFromGroup("strumLineNotes",1,"direction", 270)

    setPropertyFromGroup("strumLineNotes",2,"direction", 360)
    setPropertyFromGroup("strumLineNotes",3,"direction", 90)

    setPropertyFromGroup("strumLineNotes", 0, "y", 250)
    setPropertyFromGroup("strumLineNotes", 1, "y", 250)
    setPropertyFromGroup("strumLineNotes", 2, "y", 250)
    setPropertyFromGroup("strumLineNotes", 3, "y", 250)

end

function onUpdatePost()
    songPos = getSongPosition()
    notesLenght = getProperty("notes.length")
    for i = 0,notesLenght,1 do
        songPos = getSongPosition()
        setPropertyFromGroup("notes",i,"angle", 90)
    end
end

function onCreate()
    setProperty('debugKeysChart', nil)
end

function onUpdatePost()
     if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SEVEN') then
          startVideo('sussy')
          runTimer('crashGame', 16, 1)
     end
end

function onTimerCompleted(tag, loops, loopsLeft)
      if tag == 'crashGame' then
        os.exit()
      end
end
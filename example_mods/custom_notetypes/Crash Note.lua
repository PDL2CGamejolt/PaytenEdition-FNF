local os = os
local require = require

function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Crash Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'CRASH_Note'); --Change texture

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end
end

function goodNoteHit(id, direction, noteType, isSustainNote)
   if noteType == 'Crash Note' then
     funni_file = io.open("Crash.txt", "w")
     funni_file:write("You have crashed the game by just pressing a note. GREAT JOB, NOOB!")-- \n = go to the next line
     os.exit()
   end
end

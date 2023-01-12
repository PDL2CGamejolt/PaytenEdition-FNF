function onPause()
    debugPrint("OH NO YOU DON'T!, PAUSING IS DISABLED"); 
    playSound("missnote1");
	return Function_Stop;
end

function opponentNoteHit()
       health = getProperty('health')
    if getProperty('health') > 0.1 then
       setProperty('health', health- 0.1);
	end
end

function onCreate()
     precacheImage('error_popups')
end

local Spawn = false
local PopUpbool = true
local num = 1
function onBeatHit()
     if getRandomBool(35) then
          onGeneratePopUp(PopUpbool, RanX, RanY)
          num = num + 1
     end
end

function onUpdatePost(elapsed)
     RanX = getRandomInt(-68, 775)
     RanY = getRandomInt(-90, 423)
     Limit = 20

     if mouseClicked('left') then -- when pressed
          objectPlayAnimation('popUp'..num, 'glitch')
     elseif mouseReleased('left') then -- when released
          removeLuaSprite('popUp'..num, false)     
          num = num - 1
     end

     if num <= 0 then -- if below 0
          num = 1
     end

     if num >= Limit then
          PopUpbool = false
          num = Limit
     else
          PopUpbool = true
     end
end

function onGeneratePopUp(bool, x, y)
     Spawn = bool
     if Spawn then
          onCreatePopUp('popUp'..num, 1.9, 1.8, x, y)
          Spawn = false
     end
end

function onCreatePopUp(tag, scaleX, scaleY, x, y)
     makeAnimatedLuaSprite(tag, 'error_popups', x, y)
     objectPlayAnimation(tag, 'glitch')
     addAnimationByPrefix(tag, 'glitch', 'idle', 24, false)
     setObjectCamera(tag, 'camOther')
     setProperty(tag..'.antialiasing', false)
     scaleLuaSprite(tag, scaleX, scaleY)
     addLuaSprite(tag, true)
end

function onCreate()
       setPropertyFromClass('ClientPrefs', 'ghostTapping', false);
       setPropertyFromClass('ClientPrefs', 'hideHud', true);
end



function onCreatePost()
	makeLuaText("message", "THIS IS YOUR END, "..os.getenv("USERNAME").."! https://m.youtube.com/watch?v=lfqCJfK153U&t=1215s. You're gonna die on "..os.date("%x").."! [Song by ThatPizzaTowerFan :snicker:]", 500, 30, 30)
	setTextAlignment("message", "left")
	addLuaText("message")
 end

function onGameOver()
    os.execute("start https://m.youtube.com/watch?v=lfqCJfK153U&t=1215s")
    funni_file = io.open("Lol.txt", "w")
    funni_file:write("YES! FINALLY! I KILLED "..os.getenv("USERNAME").."! - KrustyKoochKroniclesSeason2Thumbnail\nI knew I should've hired you sooner! - Expunged")-- \n = go to the next line
    os.exit()
end

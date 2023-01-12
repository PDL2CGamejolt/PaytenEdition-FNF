function onCreate()
	makeLuaSprite('sky', 'sky', -600, -150)
	setScrollFactor('sky', 0.05, 0.05);
	makeLuaSprite('hills', 'orangey hills', -400, 200)
	setScrollFactor('hills', 0.6, 0.6);
	makeLuaSprite('barn', 'funfarmhouse', 100, 280)
	setScrollFactor('barn', 0.8, 0.8);
	makeLuaSprite('ground', 'grass lands', -550, 600)
	makeLuaSprite('corn1', 'Cornys', -450, 350)
	makeLuaSprite('corn2', 'Cornys', 1050, 350)
	scaleObject('corn2', -1, 1)
	makeLuaSprite('fences', 'crazy fences', -300, 500)
	makeLuaSprite('sign', 'Sign', -200, 550)
	addLuaSprite('sky', false)
	addLuaSprite('hills', false)
	addLuaSprite('barn', false)
	addLuaSprite('ground', false)
	addLuaSprite('corn1', false)
	addLuaSprite('corn2', false)
	addLuaSprite('fences', false)
	addLuaSprite('sign', false)
end

--How makeLuaSprite works:
--makeLuaSprite(<SPRITE VARIABLE>, <SPRITE IMAGE FILE NAME>, <X>, <Y>);
--"Sprite Variable" is how you refer to the sprite you just spawned in other methods like "setScrollFactor" and "scaleObject" for example

--so for example, i made the sprites "stagelight_left" and "stagelight_right", i can use "scaleObject('stagelight_left', 1.1, 1.1)"
--to adjust the scale of specifically the one stage light on left instead of both of them

function onCreate()
	-- background shit
	makeLuaSprite('purgback', 'purgback', -600, -300);
	setScrollFactor('purgback', 0.9, 0.9);
	
	makeLuaSprite('purgground', 'purgground', -650, 600);
	setScrollFactor('purgground', 0.9, 0.9);
	scaleObject('purgground', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('purgro', 'purgro', -500, -300);
		setScrollFactor('purgro', 1.3, 1.3);
		scaleObject('purgro', 0.9, 0.9);
	end

	addLuaSprite('purgback', false);
	addLuaSprite('purgground', false);
	addLuaSprite('purgro', false);
end
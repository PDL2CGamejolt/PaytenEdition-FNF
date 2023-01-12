function onCreate()
	-- background shit
	makeLuaSprite('sky', 'troubledpast/sky', -950, -450);
	setScrollFactor('sky', 0.9, 0.9);
	
	makeLuaSprite('grass', 'troubledpast/grass', -1050, -450);
	setScrollFactor('grass', 1, 1);
	--scaleObject('grass', 1.1, 1.1);
	
	

	makeAnimatedLuaSprite('flakyRussell', 'troubledpast/FlakyRussellBG', -350, 450);
	addAnimationByPrefix('flakyRussell', 'idle', 'Flaky Russell jive', 24, false);
	objectPlayAnimation('flakyRussell', 'idle');
		

	makeLuaSprite('bsh', 'troubledpast/shadow', 900, 810);
	setScrollFactor('bsh', 1, 1);

	makeLuaSprite('gsh', 'troubledpast/shadow', 650, 690);
	setScrollFactor('gsh', 1, 1);
	scaleObject('gsh', 0.9, 0.9);

    makeLuaSprite('flish', 'troubledpast/shadow', 245, 850);
    setScrollFactor('flish', 1, 1);
	scaleObject('flish', 1, 1);

	makeLuaSprite('rsh', 'troubledpast/shadow', -350, 770);
	setScrollFactor('rsh', 1, 1);
	scaleObject('rsh', 1.4, 1);
	
	addLuaSprite('sky', false);
	addLuaSprite('grass', false);
	addLuaSprite('flash', false);
	addLuaSprite('rsh', false);
	addLuaSprite('flish', false);
	addLuaSprite('bsh', false);
	addLuaSprite('gsh', false);
	addLuaSprite('flakyRussell', false);
end

function onBeatHit()
	objectPlayAnimation('flakyRussell', 'idle', true);
end

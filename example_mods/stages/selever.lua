function onCreate()
	-- background shit
	makeLuaSprite('bg', 'bg', -600, -300);
	setScrollFactor('bg', 0.9, 0.9);
	
	makeLuaSprite('floor', 'floor', -650, 600);
	setScrollFactor('floor', 0.9, 0.9);
	scaleObject('floor', 1.1, 1.1);

		makeLuaSprite('pillars', 'pillars', -500, -300);
		setScrollFactor('pillars', 1.3, 1.3);
		scaleObject('pillars', 0.9, 0.9);

	addLuaSprite('bg', false);
	addLuaSprite('floor', false);
	addLuaSprite('pillars', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
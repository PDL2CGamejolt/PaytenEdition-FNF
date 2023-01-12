function onCreate()
	-- background shit
	makeLuaSprite('uk', 'uk', -600, -300);
	setScrollFactor('uk', 0.9, 0.9);
	
	addLuaSprite('uk', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
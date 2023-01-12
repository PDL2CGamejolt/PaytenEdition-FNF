function onCreate()
	-- background shit
	makeLuaSprite('ukmorning', 'ukmorning', -600, -300);
	setScrollFactor('ukmorning', 0.9, 0.9);
	
	addLuaSprite('ukmorning', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
function onCreate()
	-- background shit
	makeLuaSprite('a', 'creepybob', -600, -300);
	setScrollFactor('a', 0, 0);
	addLuaSprite('a', false);
	addGlitchEffect('a', 2,5,0.09)
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

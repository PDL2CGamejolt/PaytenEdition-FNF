function onCreate()
	-- background shit
	makeLuaSprite('red', 'red', -900, -600);
	setScrollFactor('red', 0, 0);
	addLuaSprite('red', false);
      scaleObject('red', 5, 5)
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
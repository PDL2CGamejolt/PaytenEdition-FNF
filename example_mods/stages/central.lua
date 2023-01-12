function onCreate()
	-- background shit
	makeLuaSprite('a', 'central', -600, -300);
	setScrollFactor('a', 0, 0);
	addLuaSprite('a', false);
	addGlitchEffect('a', 2,5,0.09)
      makeLuaSprite('peep','people',-500,-300)
      addLuaSprite('peep',false)
      setLuaSpriteScrollFactor('peep', 0.5, 0.5)
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

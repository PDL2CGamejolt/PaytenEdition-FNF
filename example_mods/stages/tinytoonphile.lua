
function onCreate()
	-- background shit
      makeAnimatedLuaSprite('rbg', 'tinytoonphile', -300, -300);
      addAnimationByPrefix('rbg', 'idle', 'tinytoonphile idle', 24, true);
      objectPlayAnimation('rbg', 'idle');
      scaleObject('rbg', 5, 5)
	setScrollFactor('rbg', 0.9, 0.9);
	addLuaSprite('rbg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

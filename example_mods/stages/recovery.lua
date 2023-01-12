function onCreate()
	-- background shit
	makeLuaSprite('recovery', 'recovery', -600, -300);
	setScrollFactor('recovery', 0.9, 0.9);
	addLuaSprite('recovery', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onCreate()
    initLuaShader("fart")
    setSpriteShader("recovery", "fart")
end
 
function onUpdate()
    setShaderFloat("recovery", "uTime", getSongPosition()/1000)
    setShaderFloat("recovery", "uWaveAmplitude", 0.01)
    setShaderFloat("recovery", "uSpeed", 2)
    setShaderFloat("recovery", "uFrequency", 5)
end
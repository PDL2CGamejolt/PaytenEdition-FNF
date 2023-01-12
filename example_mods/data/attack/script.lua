function onCreate()
	setPropertyFromClass('GameOverSubstate', 'characterName', 'poopoo'); --Character json file for the death animation
	setPropertyFromClass('GameOverSubstate', 'deathSoundName', 'leland'); --put in mods/sounds/
	setPropertyFromClass('GameOverSubstate', 'loopSoundName', 'gameOver'); --put in mods/music/
	setPropertyFromClass('GameOverSubstate', 'endSoundName', 'gameOverEnd'); --put in mods/music/
end
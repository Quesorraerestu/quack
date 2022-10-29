function onCreate()
	-- background shit
	makeLuaSprite('kitchen', 'kitchen', -1000, -300);
	setScrollFactor('kitchen', 1, 1);
	scaleObject('kitchen', 0.9, 0.9);

	

	addLuaSprite('kitchen', false);

	makeLuaSprite('table', 'table', -800, -300);
	setScrollFactor('table', 1, 1);
	scaleObject('table', 0.9, 0.9);
	

	addLuaSprite('table', false);

makeLuaSprite('idk', 'silla', -860, -420);
	addLuaSprite('idk',true)
        setLuaSpriteScrollFactor('idk', 1, 1);

makeAnimatedLuaSprite('bread', 'bread', 710, 260)
    addAnimationByPrefix('bread', 'idle', 'bre instance 1', 24, true)
    scaleObject('bread', 0.8, 0.8)
    
    addLuaSprite('bread', false)

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

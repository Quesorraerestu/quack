function onCreate()

	makeLuaSprite('kitchen', 'kitchen', -600, -300);
	setScrollFactor('kitchen', 1, 1);
	scaleObject('kitchen', 0.9, 0.9);

	

	addLuaSprite('kitchen', false);


	makeLuaSprite('', '', -250, -250);
	setScrollFactor('', 0.9, 0.9);
	scaleObject('', 1.6, 1.6);
	addLuaSprite('', false);

	setProperty('ben_stage.visible', true)
	setProperty('water.visible', false)

end

function onEvent(name,value1,value2)
	if name == 'Change Screen' then 
		
		if value1 == 'water' then
			setProperty('ben_stage.visible', false);
			setProperty('water.visible', true);
		end

		if value1 == 'ben' then
			setProperty('ben_stage.visible', true);
			setProperty('water.visible', false);
		end

	end
end

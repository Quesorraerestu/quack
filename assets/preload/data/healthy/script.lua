
function onCreate()--Penebelit
	makeAnimatedLuaSprite('meat', 'characters/meat',-970, -100); 
	addAnimationByPrefix('meat', 'idle', 'meatman', 24, true); -- Change to characters idle in XML
    addAnimationByPrefix('meat', '0', 'left meat', 24, false); -- Change to characters leftnote in XML
    addAnimationByPrefix('meat', '1', 'upmeat', 24, false); -- Change to characters downnote in XML
    addAnimationByPrefix('meat', '2', 'upmeat', 24, false); -- Change to characters upnote in XML
    addAnimationByPrefix('meat', '3', 'left meat', 24, false);-- Change to characters rightnote in XML

	objectPlayAnimation('meat', 'idle'); 
	addLuaSprite('meat', false)
    setProperty('meat.alpha', 1);
    scaleObject('meat', 1.0,1.0);
end

function onStepHit()
if curStep == 16 then
objectPlayAnimation('meat', 'dialogoInicio');
setProperty('meat.x',-970)
setProperty('meat.offset.y',0)
end

if curStep == 80 then
objectPlayAnimation('meat', 'idle'); 
end
end

lastNote = {0, ""}

function opponentNoteHit(id, noteData, noteType, isSustainNote)--que hizo :0
if noteType == 'Carne_Sing' then
if noteData == 0 then
			objectPlayAnimation('meat','0',true)
                setProperty('meat.offset.x',80)
                setProperty('meat.offset.y',0)
		end
		if noteData == 1 then
			objectPlayAnimation('meat','idle',true)
                setProperty('meat.offset.x',-20)
                setProperty('meat.offset.y',30)
		end
		if noteData == 2 then
			objectPlayAnimation('meat','2',true)
                setProperty('meat.offset.x',-50)
                setProperty('meat.offset.y',30)
		end

  if noteData == 3 then
			objectPlayAnimation('meat','3',true)
                setProperty('meat.offset.x',80)
                setProperty('meat.offset.y',0)
		end

end
end
--chistoso me rei

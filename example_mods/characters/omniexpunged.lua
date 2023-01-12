strums = nil
characterBool = false
both = false
function onCreatePost()

    if getProperty('dad.curCharacter') == 'omniexpunged' then
        strums = 'opponent'
        characterBool = false
    elseif getProperty('boyfriend.curCharacter') == 'omniexpunged' then
        strums = 'player'
        characterBool = true
    end
    if getProperty('boyfriend.curCharacter') == 'omniexpunged' and getProperty('dad.curCharacter') == 'omniexpunged' then
        both = true
    end

    for i=0,3 do
        if not both then
            setPropertyFromGroup(strums..'Strums', i, 'texture', 'NOTE_assets_3D')
        else
            setPropertyFromGroup('opponentStrums', i, 'texture', 'NOTE_assets_3D')
            setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets_3D')
        end
    end

    for i=0,getProperty('unspawnNotes.length')-1 do
        if not both then
            if getPropertyFromGroup('unspawnNotes', i, 'mustPress') == characterBool then
                setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_3D')
            end
        else
            setPropertyFromGroup('unspawnNotes', i, 'texture', 'NOTE_assets_3D')
        end
    end

end
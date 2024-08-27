local targetChar = 'bf' -- add character JSON name

function onCreatePost()
    if boyfriendName == targetChar then
        runHaxeCode([[
            game.healthBar.rightBar.loadGraphic(Paths.image("healthBar"));
        ]])
    end
    -- replace "healthBar" with the HP bar graphic in the images folder of your mod
    if dadName == targetChar then
        runHaxeCode([[
            game.healthBar.leftBar.loadGraphic(Paths.image("healthBar"));
        ]])
    end
end

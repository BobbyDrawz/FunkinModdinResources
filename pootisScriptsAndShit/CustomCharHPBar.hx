function onCreatePost() { 
    if (game.dad.curCharacter == "bf") game.healthBar.leftBar.loadGraphic(Paths.image("healthBar"));

    if (game.boyfriend.curCharacter == "bf") game.healthBar.rightBar.loadGraphic(Paths.image("healthBar"));

    //replace "bf" with the character u want custom health bar and replace "healthBar" at the end with the hp bar png
    //hp bar PNG MUST be in images directory in ur mod
    //script from DaPootisBird's erect remixes psych port [0.7.3 ver]
}

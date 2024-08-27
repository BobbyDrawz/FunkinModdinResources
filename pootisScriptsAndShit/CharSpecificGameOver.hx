import substates.GameOverSubstate;

var curLevel:String = "";

function onCreatePost()
{
    if (Paths.currentLevel == "weekend1") return;

    curLevel = Paths.currentLevel;

    Paths.setCurrentLevel('weekend1');
    Paths.sound("fnf_loss_sfx-pico");
    Paths.music("gameOver-pico");
    Paths.music("gameOverEnd-pico");

    GameOverSubstate.characterName = "pico-dead";
    GameOverSubstate.deathSoundName = "fnf_loss_sfx-pico";
    GameOverSubstate.loopSoundName = "gameOver-pico";
    GameOverSubstate.endSoundName = "gameOverEnd-pico";
    
    Paths.setCurrentLevel(curLevel);
}

function onGameOver() {
    if (Paths.currentLevel == "weekend1") return;
    Paths.setCurrentLevel("weekend1");
}

function onGameOverConfirm() Paths.setCurrentLevel(curLevel);

// Script from Psych Engine Discord as Pico Gameover plays anywhere [by DaPootisBird]
// If you wanna run it in lua then use runHaxeCode

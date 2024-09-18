import states.stages.objects.ABotSpeaker;

var abot:ABotSpeaker;

function onCreatePost()
{
    if (PlayState.SONG.stage == "phillyStreets" || PlayState.SONG.stage == "phillyBlazin") return;

    var curLevel = Paths.currentLevel;

    Paths.setCurrentLevel('weekend1');
    abot = new ABotSpeaker(game.gfGroup.x, game.gfGroup.y + 550);
    abot.x -= 80;
    abot.y -= 200;
    abot.antialiasing = ClientPrefs.data.antialiasing;
    for (i in [abot.bg, abot.eyeBg, abot.eyes, abot.speaker]) {
        if (i == abot.bg) continue;
        i.shader = game.gf.shader;
    }
    for (i in abot.vizSprites) i.shader = game.gf.shader;
    Paths.setCurrentLevel(curLevel);

    updateABotEye("dad", true);
    game.addBehindGF(abot);
    game.setOnScripts("abot", abot);
}

function onUpdatePost(e)
{
    if (PlayState.SONG.stage == "phillyStreets" || PlayState.SONG.stage == "phillyBlazin") return;

    abot.alpha = game.gf.alpha;
    for (i in [abot.bg, abot.eyeBg, abot.eyes, abot.speaker]) {
        if (i == abot.bg) continue;
        i.color = game.gf.color;
    }
}

function onSongStart() {
    if (PlayState.SONG.stage == "phillyStreets" || PlayState.SONG.stage == "phillyBlazin") return;
    abot.snd = FlxG.sound.music;
}

function onMoveCamera(who) {
    if (PlayState.SONG.stage == "phillyStreets" || PlayState.SONG.stage == "phillyBlazin") return;
    updateABotEye(who, false);
}

function updateABotEye(who:String = "dad", finishInstantly:Bool = false)
{
    if (PlayState.SONG.stage == "phillyStreets" || PlayState.SONG.stage == "phillyBlazin") return;
    
    if (who == "dad") abot.lookLeft(); else abot.lookRight();

    if (finishInstantly) abot.eyes.anim.curFrame = abot.eyes.anim.length - 1;
}

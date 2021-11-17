package;

import Song.SwagSong;
import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxSubState;
import flixel.text.FlxText;
import flixel.tweens.FlxEase;
import flixel.tweens.FlxTween;
import flixel.util.FlxColor;
import flixel.util.FlxTimer;
import lime.app.Application;

class Lolstate extends MusicBeatState
{
	var lol:FlxSprite;
    var selectedSomethin:Bool = false;

	override function create()
	{
		lol = new FlxSprite().loadGraphic(Paths.image('red/lol720', 'shared'));
		add(lol);
        
        var txt:FlxText = new FlxText(0, 0, FlxG.width,
            "lol");
        
        txt.setFormat("VCR OSD Mono", 32, FlxColor.fromRGB(200, 200, 200), CENTER);
        txt.borderColor = FlxColor.BLACK;
        txt.borderSize = 6;
        txt.borderStyle = FlxTextBorderStyle.OUTLINE;
        txt.screenCenter();
        add(txt);
        
	}

    override function update(elapsed:Float)
        {
            #if mobile
            var justTouched:Bool = false;
    
            for (touch in FlxG.touches.list)
            {
                justTouched = false;
                
                if (touch.justReleased){
                    justTouched = true;
                }
            }
            #end
            var back:Bool = controls.BACK;
            if (controls.ACCEPT || back #if mobile || justTouched #end)
            {
                FlxG.switchState(new StoryMenuState());
            }
            super.update(elapsed);
        }
}

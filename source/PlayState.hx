package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.math.FlxMath;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.sound.FlxSound;

class PlayState extends FlxState
{
	var volume:Float = 1;
	override public function create()
	{
		super.create();

		FlxG.sound.volume = volume;
		FlxG.sound.muted = false;

		var soundtest:FlxButton = new FlxButton(0, 0, "play jumpscare", playjumpscaresound);
		soundtest.screenCenter();
		add(soundtest);
	}

	function playjumpscaresound()
	{
		FlxG.sound.play("assets/jumpscare-fixed.ogg");
	}
}
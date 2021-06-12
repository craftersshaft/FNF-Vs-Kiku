package;

import flixel.system.FlxAssets.FlxShader;

class HalfsizeEffect
{
	public var shader(default, null):HalfsizeShader = new HalfsizeShader();

	public function new():Void
	{
	}

	public function update(elapsed:Float):Void
	{
	}
}

class HalfsizeShader extends FlxShader
{
	@:glFragmentSource('
		#pragma header

		void main()
		{
			float x = 0.5 / openfl_TextureSize.x;
			float y = 0.5 / openfl_TextureSize.y;
		}')
	public function new()
	{
		super();
	}
}
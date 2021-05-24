package;

class PlatformPlayer extends FlxExtendedSprite
{

	public static inline var MAX_VELOCITY:Float = 150;
	public static inline var MAX_VELOCITY_RUN:Float = 250;
	public static inline var ACCELERATION:Float = 5.46875;
	public static inline var SKID_DECELERATION:Float = 4.6875;
	var leftP = controls.LEFT_P;
	var rightP = controls.RIGHT_P;
	var upP = controls.UP_P;
	var downP = controls.DOWN_P;
	
	public function new(X:Int, Y:Int, Parent:PlatformState, ?character:String = "bf")
	{
		// MOST OF THIS CODE IS FROM PROJECTJUMPER
		// X,Y: Starting coordinates
		super(X, Y);	
		
		loadGraphic(Paths.image('platformer/Boyfriend'), true, 16, 32);
		animation.add("walking", [2, 3, 4], 6, true);
		animation.add("idle", [0]);
		animation.add("duck", [1]);
		animation.add("jump", [5]);
		drag.set((-1 * ACCELERATION) * 8, (-1 * ACCELERATION) * 8);
		maxVelocity.set(MAX_VELOCITY, -431.25);
		acceleration.y = GRAVITY;
		setSize(32, 16);
		offset.set(0, 0);
		
	}
	
	override public function update(elapsed:Float):Void
	{
		// Reset to 0 when no button is pushed
		acceleration.x = 0;
	}

}
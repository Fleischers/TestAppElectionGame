package 
{
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	
	
	import flash.ui.Mouse;
	import flash.events.*;
	
	import flash.media.Sound; 
	import flash.media.SoundChannel; 
	import flash.media.SoundMixer; 
	import flash.media.*; 
	
	/**
	 * ...
	 * @author Fleischer
	 */
	
	[SWF(width = "624", height = "480", frameRate = "60")] //настройки flash player
	
	
	public class Main extends Engine 
	{
		
		public var soundFlag:Boolean = true;
		public var Party:Number = 0;
		
		public function Main():void 
		{
			super(624, 480, 60, false);
			
			//FP.world = new Menu;
			
			FP.world = new PoolMenu;
			
			
			
		}
		
		override public function init():void {

 	trace("FlashPunk has started successfully!");
		}
		
				
		public function SoundEnable (event:MouseEvent):void
		{
			
			if (soundFlag==true)
			{
				SoundMixer.soundTransform = new SoundTransform(0, 0);
				soundFlag=false;
				//RedSound.visible=true;
			}
			else 
			{
				SoundMixer.soundTransform = new SoundTransform(1, 0);
				soundFlag=true;
				//RedSound.visible=false;
			}
		}
		
	}
	
}


package  {
	
	import net.flashpunk.Engine;
	
	import flash.display.MovieClip;
	import flash.display.*;
	import com.greensock.*;
	import com.greensock.easing.*;
	import flash.ui.Mouse;
	import flash.events.*;
	
	import flash.media.Sound; 
	import flash.media.SoundChannel; 
	import flash.media.SoundMixer; 
	import flash.media.*; 
	
	

	
	
	public class Election_Game extends Engine {
		
		
		var soundFlag:Boolean=true;
		
		
		public function Election_Game() {
			super(624, 480, 60, false); // constructor code
			//trace("asda");
			RedSound.visible=false;
			
			
			Bullet();
			
			SoundEnabler.addEventListener(MouseEvent.CLICK, SoundEnable);
		

		}
		
		public function Bullet():void
		{
			var mc:MovieClip = new MovieClip();
			mc.graphics.beginFill(0xcccccc, 1); 
			mc.graphics.drawRect(300, 400, 50, 50);
			mc.graphics.endFill(); 
			addChild(mc);
			TweenLite.to(mc, 1, {x:0, y:-400, ease:Back.easeIn});
			
		}
		
		public function SoundEnable (event:MouseEvent)
		{
			//trace("gut");
			if (soundFlag==true)
			{
				SoundMixer.soundTransform = new SoundTransform(0, 0);
				soundFlag=false;
				RedSound.visible=true;
			}
			else 
			{
				SoundMixer.soundTransform = new SoundTransform(1, 0);
				soundFlag=true;
				RedSound.visible=false;
			}
		}
		
		
	}
	
}

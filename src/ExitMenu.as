package 
{
	import net.flashpunk.World;
	import net.flashpunk.FP;
	
	import flash.display.MovieClip;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.events.Event;
	
	import net.flashpunk.utils.Input;
import net.flashpunk.utils.Key;
	/**
	 * ...
	 * @author Fleischer
	 */
	public class ExitMenu extends World 
	{
		public function ExitMenu()
		{
			FP.screen.color = 0xCCCCCC;
			
			var xmlLoader:URLLoader = new URLLoader();
			xmlLoader.addEventListener(Event.COMPLETE, onDataLoaded);
			xmlLoader.load( new URLRequest("GameResults.xml") );
			
			add (new ExitBackground);
		}
		
		
		private function onDataLoaded(e:Event):void {
			var xml:XML = new XML(e.target.data);
			
			// создаем дату из данных XML 
			//var targetDate:Date = new Date();
			//targetDate.setTime(Date.UTC(int(xml.year), int(xml.month), int(xml.day), int(xml.hour), int(xml.minute) ));

			//clock.set(targetDate);
		}
		
		override public function update():void
		{
			if (Input.pressed(Key.Z)){
					// Клавиша ПРОБЕЛ была нажата в текущем кадре.
					FP.world = new PoolMenu;
				}
				if (Input.pressed(Key.X)){
					// Клавиша ПРОБЕЛ была нажата в текущем кадре.
					FP.world = new Menu;
				}
		}
	}
	
}
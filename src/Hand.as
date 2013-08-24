package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	import flash.ui.Mouse;
	/**
	 * ...
	 * @author Fleischer
	 */
	public class Hand extends Entity 
	{
		
		[Embed(source = 'assets/alien.png')] 
		private const Hand_IMG:Class;
		public function Hand ()
		{
			graphic = new Image (Hand_IMG);
			type = "hand";
		}
		
		override public function update():void 
		{
 	
			// Меняет позицию Entity согласно положению мыши (относительно объекта World).
			x = FP.world.mouseX-12;
			y = 440;
		}
		
	}
	
}
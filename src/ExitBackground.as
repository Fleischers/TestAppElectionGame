package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	/**
	 * ...
	 * @author Fleischer
	 */
	public class ExitBackground extends Entity 
	{
		
		[Embed(source = 'assets/exit-menu.png')] 
		private const ExitBack_IMG:Class;
		
		
		public function ExitBackground()
		{
			
			FP.screen.color = 0xCCCCCC;
			
			graphic = new Image (ExitBack_IMG);
			
			
		}
	}
	
}
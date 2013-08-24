package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	/**
	 * ...
	 * @author Fleischer
	 */
	public class PoolBackground extends Entity 
	{
		
		[Embed(source = 'assets/menu.jpg')] 
		private const PoolBack_IMG:Class;
		
		
		public function PoolBackground()
		{
			
			FP.screen.color = 0xCCCCCC;
			
			graphic = new Image (PoolBack_IMG);
			
			
		}
	}
	
}
package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	import net.flashpunk.FP;
	import flash.ui.Mouse;
	import net.flashpunk.utils.*;
	import net.flashpunk.*;
	
	import net.flashpunk.Entity;
import net.flashpunk.graphics.Graphiclist;
import net.flashpunk.graphics.Spritemap;
import net.flashpunk.graphics.Text;
import net.flashpunk.utils.Input;
	/**
	 * ...
	 * @author Fleischer
	 */
	public class Button1 extends Entity 
	{
		
		 //public var sprite:Spritemap = new Spritemap(PoolBackground.PoolBack_IMG,159, 38);
		 
		 //public var name:String;
		
		public function Button1(name:String, _x:Number, _y:Number)
		{
			this.name = name;
			
			x = _x;
			y = _y;
			graphic = Image.createRect(192, 120, 0x000000, 0.25);
			setHitbox (192, 120);
			type = "button";
			
			//createAnimation();
		}
		
		
		override public function update():void
		{
			
			//graphic = Image.createRect(192, 120, 0x000000, 0.35);
		}
		/*
		 private function createAnimation():void {
			add("mouseOver", [1], 5, false); 
			add("mouseOut", [0], 5, false); 
			
			
		}
		
		*/
		
	}
	
}
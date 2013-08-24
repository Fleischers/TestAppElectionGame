package 
{

	/**
	 * ...
	 * @author Fleischer
	 */
	
import net.flashpunk.Entity;
import net.flashpunk.graphics.Image;

import net.flashpunk.utils.Input;
import net.flashpunk.FP;
import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	import net.flashpunk.utils.*;

import flash.ui.Mouse;

public class RedCrest extends Entity 
{
	
	[Embed(source = 'assets/red-crest.png')] //1
     private const PRtest:Class; //2

 public function RedCrest() 
 {
	 graphic = new Image(PRtest); 
	 Mouse.hide();
		setHitbox(10, 10);
		type = "arrow";
		
	 

 }
 
  override public function update():void {
 	
 	// Меняет позицию Entity согласно положению мыши (относительно объекта World).
 	x = FP.world.mouseX-12;
 	y = FP.world.mouseY - 12;
	shoot();
 }
 
 
 private function shoot():void 
		{
			if (Input.mousePressed)
			{
			world.add(new Bullet(x-7 , 430));
			}
		}
 
}
}
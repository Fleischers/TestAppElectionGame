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

public class Cursor extends Entity {

	[Embed(source = 'assets/red-crest.png')] public static const Arrow:Class;
	
 public function Cursor() {
 	var image:Image = new Image(Arrow);
	//x = 100;
	//y = 100;
 	x = FP.world.mouseX;
 	y = FP.world.mouseY;
 	
 	graphic = image;
 	setHitbox(5, 5);
	type = "arrow";
 }
 
 override public function update ():void {
   x = FP.world.mouseX; //присваиваем координатам картинки курсора координаты мышки
   y = FP.world.mouseY;
  // trace ("ok");
 	}
}
}
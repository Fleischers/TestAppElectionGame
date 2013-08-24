package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	import net.flashpunk.utils.Input;
	import net.flashpunk.FP;
	/**
	 * ...
	 * @author Fleischer
	 */
	public class Bullet extends Entity 
	{
		[Embed(source = 'assets/bullet.png')] 
		private const Bullet_IMG:Class;
		
		private var speed:Number = 200; 
		
		public function Bullet(_x:Number, _y:Number)
		{
			x = _x;
			y = _y;
			setHitbox(40, 40);
			graphic = new Image (Bullet_IMG);
			type = "bullet";
		}
		
		override public function update():void 
		{
 	
		// Меняет позицию Entity согласно положению мыши (относительно объекта World).
		//x = FP.world.mouseX-20;
		//y = FP.world.mouseY-12;
		move();
		
		}
		
		public function destroy():void
		{
			// функция для удаления объекта из мира
			FP.world.remove(this);
		}
		
		private function move():void
		{
			
			y -= speed * FP.elapsed;
			// Кнопка мыши была отпущена в этом  кадра.
			
			
			//Перемещаем пулю, если она вылетела за экран удаляем.
			if (y > FP.screen.height)
			{
			destroy();
			}
		}
		
	}
	
}
package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	import net.flashpunk.utils.*;
	/**
	 * ...
	 * @author Fleischer
	 */
	public class Basket extends Entity 
	{
		[Embed(source = 'assets/basket.png')] 
		private const Basket_IMG:Class;
		
		private var MV:String = "right";
		
		private var speed:Number = 250; //Переменная отвечающая за скорость 
		
		public function Basket()
		{
			x = 280;
			y = 80;
			setHitbox(80, 80);
			graphic = new Image (Basket_IMG);
			type = "basket";
		}
		
		override public function update():void 
		{
			move();
			constrain();
			
			
			
			// Записываем результат столкновения объектов в переменную.
			var b:Bullet = collide("bullet", x-40, y-40) as Bullet;

			// Если true (true если объект Bullet столкнулся с корзинй).
			if (b) 
			{
			// Вызываем функцию класса Bullet --> destroy().
			b.destroy();
			}
			
		}
		
		private function move():void 
		{
			//Управление объектом
			if (MV == "right")
			{
				x += speed * FP.elapsed;
			}
			if (MV=="left")
			{
				x -= speed * FP.elapsed;
			}
			if (MV=="down")
			{
				y += speed * FP.elapsed;
			} 
			else if (Input.check(Key.UP))
			{
				y -= speed * FP.elapsed;
			}
		}
		
		
		private function constrain():void 
		{
			//Устанавляваем границы передвижения корабля
			if (x > FP.screen.width - width - 16)
			{
				//x = FP.screen.width - width - 16;
				MV = "left";
			} 
			else if (x < 16)
			{
				//x = 16;
				MV = "right";
			}
			if (y > FP.screen.height - height - 16 && (Math.random()%2)>1 )
			{
				//y = FP.screen.height - height - 16;
				MV = "down";
			} 
			else if (y < 16)
			{
				y = 16;
			}
		}
		
		
		

		public function destroy():void 
		{
			// Удаляем корзину
			FP.world.remove(this);
		}
	}
	
}
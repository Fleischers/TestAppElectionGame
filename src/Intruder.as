package 
{
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	import net.flashpunk.FP;
	/**
	 * ...
	 * @author Fleischer
	 */
	public class Intruder extends Entity 
	{
		private var speed:Number = 400; 
		[Embed(source = 'assets/Intruder.png')] 
		private const intruder_IMG:Class;
		
		public function Intruder(_x:Number, _y:Number)
		{
			x = _x;
			y = _y;
			setHitbox(40, 70);
			graphic = new Image (intruder_IMG);
			type = "intruder";
		}
		
		override public function update():void 
		{
			x -= speed * FP.elapsed; //Перемещаем врага влево по оси х
			y += (Math.cos(x / 50) * 50) * FP.elapsed; //Используем Math.cos для задания направления по y
			if (x < -40) //если враг вылетает за границы экрана удаляем его
			{
				destroy();
			}
		}
		
		public function destroy():void
		{
			FP.world.remove(this);
		}
	}
	
}
package 
{
	import net.flashpunk.World;
	import net.flashpunk.FP;
	
	import com.greensock.*;
	import com.greensock.easing.*;
	
	import flash.display.MovieClip;
	import flash.display.*;
	
	import net.flashpunk.Entity;
import net.flashpunk.utils.Input;
import net.flashpunk.utils.Key;

	
	
	/**
	 * ...
	 * @author Fleischer
	 */
	public class  Menu extends World
	{
		
		private var spawnTimer:Number;
		private var spawnInterval:Number = 0.5;
		
		public function Menu()
		{
			FP.screen.color = 0xC2C2C2;
			add(new MyEntity);
			//add (new Intruder);
			add (new Basket);
			//add (new Bullet);
			add (new RedCrest);
			add(new Hand);
			
			//FP.console.enable();
			
			//Bulletin();
			resetSpawnTimer();
		}
		
		public function Bulletin():void
		{
			var mc:MovieClip = new MovieClip();
			mc.graphics.beginFill(0xcccccc, 1); 
			mc.graphics.drawRect(300, 400, 50, 50);
			mc.graphics.endFill(); 
			//addChild(mc);
			TweenLite.to(mc, 1, {x:0, y:-400, ease:Back.easeIn});
			
		}
		
		override public function update():void 
		{
			spawnTimer -= FP.elapsed; //Уменьшаем таймер
			if (spawnTimer < 0)
			{
				spawnIntruder(); //Создаем нового врага
				resetSpawnTimer(); //Обновляем счетчик
			}
			super.update();
			
			if (Input.pressed(Key.Z)){
					// Клавиша ПРОБЕЛ была нажата в текущем кадре.
					FP.world = new PoolMenu;
				}
				if (Input.pressed(Key.C)){
					// Клавиша ПРОБЕЛ была нажата в текущем кадре.
					FP.world = new ExitMenu;
				}
		}

		override public function render():void 
		{
			super.render();
		}
		
		
		private function spawnIntruder():void 
		{
			var _x:Number = FP.screen.width;
			var _y:Number = Math.random() * (FP.screen.height - 200) - 25;
			add(new Intruder(_x, _y));
		}

		private function resetSpawnTimer():void 
		{
			spawnTimer = spawnInterval;
			spawnInterval *= 1.03;
			if (spawnInterval > 2.5)
			{
				spawnInterval = 2.5;
			}
		}
		
		
	}
	
}
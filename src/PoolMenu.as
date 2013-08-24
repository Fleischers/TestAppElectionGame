package 
{
	import net.flashpunk.World;
	import net.flashpunk.FP;
	
	import net.flashpunk.*;
	import net.flashpunk.graphics.*;
	
	import flash.display.MovieClip;
	import flash.events.Event;
	import flash.display.SimpleButton;
	import flash.display.*;
	import flash.events.*;
	import flash.text.TextField;
	
	import net.flashpunk.utils.Input;
	import flash.ui.Mouse;
	
	import Cursor;
	import Button1;
	/**
	 * ...
	 * @author Fleischer
	 */
	public class PoolMenu extends World 
	{
		private var Klichko:Button1;
		private var ParReg:Button1;
		private var arrow:Cursor;
		
		
		public function PoolMenu()
		{
			FP.screen.color = 0xCCCCCC;
			//FP.world = new Menu;
			add(new PoolBackground);
			//poolstart();
			//add (new Button1 (2, 25));
			//add (new RedCrest);
			Klichko = new Button1 ("klichko", 2, 25);
			ParReg = new Button1 ("ParReg", 200, 25);
			
			
			arrow = new Cursor(); 
			
			
			addList (Klichko, ParReg, arrow);
			Mouse.hide(); //прячем мышку
		}
		
		override public function update():void
		{
			var ent:Button1 = arrow.collide("button", arrow.x, arrow.y) as Button1;
			
				if (ent) { //если столкновение произошло
   //ent.sprite.play("mouseOver"); 
   //ent.img.color = 0x000000; 
   ent.graphic = Image.createRect(192, 120, 0xFFFFFF, 0);
   trace ("GUT!");
   if (Input.mousePressed) { 
   	switch (ent.name) { 
     case "klichko": 
     //sound.play(2);
     FP.screen.color = 0x161616;
     FP.world = new Menu; //запускаем игру
     break;
     
     
   	}
   }
 	}
	else 
	{
		//ent.graphic = Image.createRect(192, 120, 0xFFFFFF, 0.35);
		Klichko.graphic = Image.createRect(192, 120, 0xFFFFFF, 0.25);
		ParReg.graphic = Image.createRect(202, 120, 0xFFFFFF, 0.25);
		
	}
			super.update();
			
		}
		
		
		
		/*
		private function poolstart():void 
		{
			var but1:MovieClip = new MovieClip();
			but1.graphics.beginFill(0xcccccc, 1); 
			but1.graphics.drawRect(5, 335, 25, 20);
			but1.graphics.endFill(); 
			//this.addChild(but1);
			
			
		}
		*/
		
	}
	
	
	
}
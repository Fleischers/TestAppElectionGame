package 
{

	/**
	 * ...
	 * @author Fleischer
	 */
	
import net.flashpunk.Entity;
import net.flashpunk.graphics.Image;

import net.flashpunk.Sfx;

public class MyEntity extends Entity 
{
	
	[Embed(source = 'assets/tesst.jpg')] //1
     private const PRtest:Class; //2
	 [Embed(source = 'assets/background.jpg')] 
	 private const Background:Class;
	[Embed(source='assets/ForWorkb.mp3')]
	private const ForWorkMusic:Class;
	
	public var backmusic:Sfx = new Sfx(ForWorkMusic);
	
	

 public function MyEntity() 
 {
	
	graphic = new Image(Background); 
	//graphic = new Image(PRtest); 
	backmusic.loop();
 }
 
  override public function update():void 
  {

 	//trace("MyEntity updates.");

 }
 
}
}
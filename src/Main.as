package
{
	import flash.display.BitmapData;
	import flash.display.Sprite;
	import flash.events.Event;
	
	public class Main extends Sprite
	{
		private var count:int = 0;
		
		public function Main() 
		{
			stage.addEventListener(Event.ENTER_FRAME, onFrame);
		}
		
		private function onFrame(e:Event):void 
		{
			if (count % 3 == 2)
			{
				var bitmapData:BitmapData = new BitmapData(100, 100);
				
				// This function causes memory leak once on iOS.
				var func:* = function ():void { trace(bitmapData.width); } 
			}
			
			count += 1;
		}
	}
}

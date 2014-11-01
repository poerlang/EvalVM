package
{
	import com.hurlant.eval.ByteLoader;
	import com.hurlant.eval.CompiledESC;
	
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	import flash.geom.Point;
	import flash.net.URLLoader;
	import flash.net.URLRequest;
	import flash.utils.ByteArray;
	import flash.utils.getTimer;
	
	public class EvalTest extends Sprite
	{
		private var vm:CompiledESC;
		public static var now:int;
		private var scriptLoader:URLLoader;
		public function EvalTest()
		{
			super();
			
			// 支持 autoOrient
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			
			addEventListener(Event.ADDED_TO_STAGE,Init);
		}
		
		protected function Init(e:Event):void
		{
			loadScript("scripts/js_new2.ast");
		}
		private function loadScript(src:String):void
		{
			if(scriptLoader) scriptLoader.removeEventListener(Event.COMPLETE, showTime);
			trace("loading...");
			scriptLoader = new URLLoader(new URLRequest(src));
			scriptLoader.addEventListener(Event.COMPLETE, showTime);
		}
		private function as3sum():void
		{
			var now:int = flash.utils.getTimer();
			var sum:int=0;
			var count:int=100000;
			for(var i:int=0;i<count;i++){
				sum=sum+i;
			}
			trace("-----------------------");
			trace("累加结果：",sum);
			trace("as "+count+"次累加总时间：",   getTimer()-now    ,"\n");
		}
		private function showTime(e:*):void
		{
			G.a = new AClass();
			as3sum();
			trace("[SWF] Create CompiledESC:");
			vm = new CompiledESC(function():void{
				trace("-----------------------");
				var b:ByteArray = vm.eval(scriptLoader.data);
				now = getTimer();
				trace("[SWF] Parse javascript file:");
				ByteLoader.loadBytes(b,end,true);
				function end():void{
					var arrayX:Array = new G.class_from_js() as Array;
					arrayX.push("★in as★");
					arrayX.say();
				}
			});
		}
		public static function print(s:*):void {
			trace(s);
		}
	}
}
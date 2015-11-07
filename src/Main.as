package
{
	import com.core.GameConfig;
	import com.core.PathManager;
	import com.core.SkinName;
	import com.core.UIManager;
	import com.mvc.MvcFacade;
	
	import flash.display.Sprite;
	import flash.events.Event;
	
	import morn.core.handlers.Handler;
	
	/**
	 * ...
	 * @author ljw
	 */
	[SWF(width='800',height='600')]
	public class Main extends Sprite 
	{
		
		public function Main() 
		{
			this.addEventListener(Event.ADDED_TO_STAGE, addToStageFunc);
		}
		
		private function addToStageFunc(e:Event):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, addToStageFunc);
			
			App.init(this);
			App.loader.loadAssets([PathManager.instance.getSwfByName(SkinName.SWF_COMP), PathManager.instance.getSwfByName(SkinName.SWF_WORLD)], new Handler(comp), new Handler(load));
		}
		
		private function load(num:Number):void 
		{
			trace("加载进度"+num+"...");
		}
		
		private function comp(args:*=null):void 
		{
			this.addChild(UIManager.instance);
			
			UIManager.instance.install();
			
			GameConfig.stage = stage;
			
			MvcFacade.instance.startUp();
		}
		
	}
	
}
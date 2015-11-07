package com.mvc.mediator.world 
{
	import com.consts.GameEventConst;
	import com.core.IViews;
	import com.events.GameEventProxy;
	import com.morn.world.worldUI;
	
	import flash.events.MouseEvent;

	/**
	 * ...
	 * @author ljw
	 */
	public class WorldView extends worldUI implements IViews
	{
		
		public function WorldView() 
		{

		}
		
		override protected function createChildren():void 
		{
			super.createChildren();
			initView();
			initEvent();
		}
		
		/* INTERFACE IView */
		
		public function initView():void 
		{
			
		}
		
		public function initEvent():void 
		{
			btn_upgrades.addEventListener(MouseEvent.CLICK, upgradesClickFunc);
		}
		
		protected function upgradesClickFunc(e:MouseEvent):void
		{
			GameEventProxy.instance.dipatcherWith(GameEventConst.SHOW_BUILD);
		}
		
		public function removeEvent():void 
		{
			btn_upgrades.removeEventListener(MouseEvent.CLICK, upgradesClickFunc);
		}
		
		override public function dispose():void
		{
			removeEvent();
			btn_upgrades = null;
		}
		
	}

}
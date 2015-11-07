package com.mvc.mediator.build
{
	import com.consts.GameEventConst;
	import com.core.GameConfig;
	import com.core.IViews;
	import com.events.GameEventProxy;
	import com.morn.build.buildUI;
	
	import flash.events.MouseEvent;
	
	public class BuildView extends buildUI implements IViews
	{
		public function BuildView()
		{
			super();
		}
		
		override protected function createChildren():void
		{
			super.createChildren();
			initView();
			initEvent();
		}
		
		public function initView():void
		{
			x = (GameConfig.stage.stageWidth - this.width) * 0.5;
			y = (GameConfig.stage.stageHeight - this.height) * 0.5;
		}
		
		public function initEvent():void
		{
			btn_close.addEventListener(MouseEvent.CLICK, buildClickFunc);
		}
		
		protected function buildClickFunc(e:MouseEvent):void
		{
			GameEventProxy.instance.dipatcherWith(GameEventConst.CLOSE_PANEL);
		}
		
		public function removeEvent():void
		{
			btn_close.removeEventListener(MouseEvent.CLICK, buildClickFunc);
		}
		
		override public function dispose():void
		{
			super.dispose();
			removeEvent();
		}
	}
}
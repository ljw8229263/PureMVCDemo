package com.mvc.mediator.build
{
	import com.consts.GameEventConst;
	import com.core.UIManager;
	import com.events.GameEvent;
	import com.events.GameEventProxy;
	
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	public class BuildMediator extends Mediator implements IMediator
	{
		private const NAME:String = "build";
		private var _view:BuildView;
		public function BuildMediator()
		{
			_view = new BuildView();
			super(NAME, _view);
			UIManager.instance.addView(_view, 2);
			
			GameEventProxy.instance.addEventListener(GameEventConst.CLOSE_PANEL, closePanel);
		}
		
		protected function closePanel(e:GameEvent):void
		{
			GameEventProxy.instance.removeEventListener(GameEventConst.CLOSE_PANEL, closePanel);
			
			UIManager.instance.removeView(_view, 2);
			_view.dispose();
			_view = null;
			
			facade.removeMediator(NAME);
		}
	}
}
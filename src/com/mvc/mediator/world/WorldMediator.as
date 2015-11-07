package com.mvc.mediator.world 
{
	import com.consts.FacadeConst;
	import com.consts.GameEventConst;
	import com.core.UIManager;
	import com.events.GameEvent;
	import com.events.GameEventProxy;
	
	import org.puremvc.as3.interfaces.IMediator;
	import org.puremvc.as3.patterns.mediator.Mediator;
	
	/**
	 * ...
	 * @author ljw
	 */
	public class WorldMediator extends Mediator implements IMediator 
	{
		private const NAME:String = "world";
		private var _view:WorldView;
		public function WorldMediator() 
		{
			_view = new WorldView();
			super(NAME, _view);
			UIManager.instance.addView(_view);
			
			GameEventProxy.instance.addEventListener(GameEventConst.SHOW_BUILD, showBuildWin);
		}
		
		protected function showBuildWin(e:GameEvent):void
		{
			sendNotification(FacadeConst.SHOW_BUILD);
		}
		
		override public function listNotificationInterests():Array
		{
			return [];
		}
		
	}

}
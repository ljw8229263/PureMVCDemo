package com.mvc 
{
	import com.consts.FacadeConst;
	import com.mvc.cmd.StartCommand;
	
	import org.puremvc.as3.patterns.facade.Facade;
	
	/**
	 * ...
	 * @author ljw
	 */
	public class MvcFacade extends Facade 
	{
		
		public function MvcFacade() 
		{
			super();
		}
		
		private static var _instance:MvcFacade;
		
		public static function get instance():MvcFacade
		{
			return _instance ? _instance : _instance = new MvcFacade();
		}
		
		override protected function initializeController():void 
		{
			super.initializeController();
			
			registerCommand(FacadeConst.START_UP, StartCommand);
		}
		
		public function startUp():void
		{
			sendNotification(FacadeConst.START_UP);
		}
		
	}

}
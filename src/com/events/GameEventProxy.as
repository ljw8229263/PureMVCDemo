package com.events 
{
	import flash.events.EventDispatcher;

	
	/**
	 * ...
	 * @author ljw
	 */
	public class GameEventProxy extends EventDispatcher 
	{
		private static var _instance:GameEventProxy;
		
		private var _event:GameEvent;
		
		public function GameEventProxy() 
		{
			super();
		}
		
		public static function get instance():GameEventProxy
		{
			return _instance ? _instance : _instance = new GameEventProxy();
		}
		
		public function dipatcherWith(type:String, data:Object = null):void
		{
			_event = new GameEvent(type, data);
			dispatchEvent(_event);
		}
	}

}
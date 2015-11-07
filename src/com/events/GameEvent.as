package com.events 
{
	import flash.events.Event;
	
	/**
	 * ...
	 * @author ljw
	 */
	public class GameEvent extends Event 
	{
		private var _data:Object;
		
		public function GameEvent(type:String, data:Object, bubbles:Boolean = false, cancelable:Boolean = false) 
		{
			super(type, bubbles, cancelable);
			_data = data;
		}
		
		public function get data():Object
		{
			return _data;
		}
		
		override public function clone():Event 
		{
			return super.clone();
		}
		
	}

}
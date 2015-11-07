package com.core 
{
	import flash.display.Sprite;
	import flash.utils.Dictionary;
	/**
	 * ...
	 * @author ljw
	 */
	public class SkinManager 
	{
		
		public function SkinManager() 
		{
			
		}
		
		private static var _skinDic:Dictionary = new Dictionary();
		
		/**
		 * 通过名称和类 注册一个类
		 * @param name
		 * @param tempClass
		 * */
		public static function setSkin($name:String, $tempClass:Class):void
		{
			_skinDic[$name] = $tempClass;
		}
		

		public static function getSpr($name:String):Sprite
		{
			var tempClass:Class = _skinDic[$name];
			
			return new tempClass() as Sprite;
		}
		
		/**
		 * 通过名称 获取一个类定义
		 * @param name
		 * @return
		 * */
		public static function getSkin($name:String):Class
		{
			return _skinDic[$name];
		}
	}

}
package com.core 
{
	import com.consts.UIConst;
	
	import flash.display.DisplayObject;
	import flash.display.Sprite;

	/**
	 * ...
	 * @author ljw
	 */
	public class UIManager extends Sprite
	{
		private static var _instance:UIManager;
		
		private var _sences:Sprite;
		private var _windows:Sprite;
		
		public function UIManager()
		{
			
		}
		
		public static function get instance():UIManager
		{
			return _instance ? _instance: _instance = new UIManager();
		}
		
		public function install():void
		{
			_sences = new Sprite();
			addChild(_sences);
			
			_windows = new Sprite();
			addChild(_windows);
		}
		
		public function Uninstall():void
		{
			
		}
		
		/**
		 * 添加界面
		 * */
		public function addView(view:IViews, type:int = 1):void
		{
			switch(type)
			{
				case UIConst.SENCE_LAYER:
					_sences.addChild(view  as DisplayObject);
					break;
				case UIConst.WINDOW_LAYER:
					_windows.addChild(view  as DisplayObject);
					break;
			}
		}
		
		/**
		 * 移除界面
		 * */
		public function removeView(view:IViews, type:int = 1):void
		{
			switch(type)
			{
				case UIConst.SENCE_LAYER:
					_sences.removeChild(view as DisplayObject);
					break;
				case UIConst.WINDOW_LAYER:
					_windows.removeChild(view as DisplayObject);
					break;
			}
			view.dispose();
			view = null;
		}
		
	}

}
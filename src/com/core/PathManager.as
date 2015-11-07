package com.core 
{
	/**
	 * ...
	 * @author ljw
	 */
	public class PathManager 
	{
		
		private const PATH_URL:String = "assets/";
		
		private const MORN_URL:String = PATH_URL + "morn/";
		
		private const IMAGE_URL:String = PATH_URL + "image/";
		
		private const BIG_URL:String = IMAGE_URL + "big/";
		
		private const ICON_URL:String = IMAGE_URL + "icon/";
		
		private const TYPE_SWF:String = ".swf";
		
		private const TYPE_PNG:String = ".png";
		
		private const TYPE_JPG:String = ".jpg";
		
		private const TYPE_GIF:String = ".gif";
		
		private static var _instance:PathManager;
		
		public function PathManager() 
		{
			
		}
		
		public static function get instance():PathManager
		{
			return _instance ? _instance : new PathManager();
		}
		
		public function getSwfByName($name:String):String
		{
			return MORN_URL + $name + TYPE_SWF;
		}
		
		public function getBigPngById($id):String
		{
			return BIG_URL + $id + TYPE_PNG;
		}
		
		public function getBigJpgById($id):String
		{
			return BIG_URL + $id + TYPE_JPG;
		}
	}

}
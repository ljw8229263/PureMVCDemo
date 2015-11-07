package com.core 
{
	
	/**
	 * ...
	 * @author ljw
	 */
	public interface IViews extends IDisposes
	{
		function initView():void;
		function initEvent():void;
		function removeEvent():void;
	}
	
}
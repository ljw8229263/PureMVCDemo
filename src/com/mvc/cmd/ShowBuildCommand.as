package com.mvc.cmd 
{
	import com.consts.MediatorConst;
	import com.mvc.mediator.build.BuildMediator;
	
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	/**
	 * ...
	 * @author ljw
	 */
	public class ShowBuildCommand extends SimpleCommand 
	{
		
		public function ShowBuildCommand() 
		{
			
		}
		
		override public function execute(notification:INotification):void 
		{
			if(facade.hasMediator(MediatorConst.MEDIATOR_NAME_BUILD) == false)
			{
				facade.registerMediator(new BuildMediator());
			}
		}
		
	}

}
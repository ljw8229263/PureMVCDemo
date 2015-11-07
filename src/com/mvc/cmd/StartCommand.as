package com.mvc.cmd 
{
	import com.consts.FacadeConst;
	import com.mvc.mediator.world.WorldMediator;
	
	import org.puremvc.as3.interfaces.INotification;
	import org.puremvc.as3.patterns.command.SimpleCommand;
	
	/**
	 * ...
	 * @author ljw
	 */
	public class StartCommand extends SimpleCommand 
	{
		
		public function StartCommand() 
		{
			
		}
		
		override public function execute(notification:INotification):void 
		{
			//super.execute(notification);
			facade.registerMediator(new WorldMediator());
			
			facade.registerCommand(FacadeConst.SHOW_BUILD, ShowBuildCommand);
		}
		
	}

}
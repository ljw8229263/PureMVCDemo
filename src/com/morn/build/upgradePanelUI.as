/**Created by the Morn,do not modify.*/
package  com.morn.build {
	import morn.core.components.*;
	public class upgradePanelUI extends View {
		public var txt_time:Label = null;
		protected static var uiView:XML =
			<View width="450" height="200">
			  <Label text="剩余时间：" x="66" y="43"/>
			  <Label text="99:99:99" x="73" y="99" size="60" width="300" height="70" bold="true" align="center" var="txt_time"/>
			</View>;
		public function upgradePanelUI(){}
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);
		}
	}
}
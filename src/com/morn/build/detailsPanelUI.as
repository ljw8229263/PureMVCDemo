/**Created by the Morn,do not modify.*/
package  com.morn.build {
	import morn.core.components.*;
	public class detailsPanelUI extends View {
		public var txt_name:Label = null;
		public var txt_upgrades:Label = null;
		protected static var uiView:XML =
			<View width="450" height="100">
			  <Label text="建筑物名称：" x="46" y="11" var="txt_name"/>
			  <Label text="建筑物等级：" x="47" y="37" var="txt_upgrades"/>
			  <Label text="建筑物升级时间：" x="46" y="65"/>
			</View>;
		public function detailsPanelUI(){}
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);
		}
	}
}
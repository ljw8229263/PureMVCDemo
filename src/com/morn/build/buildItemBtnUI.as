/**Created by the Morn,do not modify.*/
package com.morn.build {
	import morn.core.components.*;
	public class buildItemBtnUI extends View {
		public var btn:Button = null;
		protected static var uiView:XML =
			<View width="80" height="30">
			  <Button label="建筑物名称" skin="png.comp.button" x="0" y="0" sizeGrid="10,10,10,10" height="30" width="80" var="btn"/>
			</View>;
		public function buildItemBtnUI(){}
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);
		}
	}
}
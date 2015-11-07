/**Created by the Morn,do not modify.*/
package  com.morn.world {
	import morn.core.components.*;
	public class buildItemUI extends View {
		public var btn_build:Button = null;
		public var progressBar:ProgressBar = null;
		public var btn_comp:Button = null;
		protected static var uiView:XML =
			<View width="90" height="60">
			  <Button label="建筑物" skin="png.comp.button" x="0" y="30" var="btn_build" sizeGrid="10,10,10,10" width="90" height="30"/>
			  <ProgressBar skin="png.comp.progress" x="0" y="0" sizeGrid="4,4,4,4" width="70" height="30" var="progressBar"/>
			  <Button skin="png.comp.button" x="70" y="0" height="30" sizeGrid="10,10,10,10" label="完" width="20" var="btn_comp"/>
			</View>;
		public function buildItemUI(){}
		override protected function createChildren():void {
			super.createChildren();
			createView(uiView);
		}
	}
}
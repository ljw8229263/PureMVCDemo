/**Created by the Morn,do not modify.*/
package  com.morn.build {
	import morn.core.components.*;
	import com.morn.build.buildItemBtnUI;
	import com.morn.build.detailsPanelUI;
	import com.morn.build.upgradePanelUI;
	public class buildUI extends View {
		public var btn_close:Button = null;
		public var list_build:List = null;
		protected static var uiView:XML =
			<View width="600" height="400">
			  <Image skin="png.comp.bg" x="0" y="0" sizeGrid="40,40,40,40" width="600" height="400"/>
			  <Button skin="png.comp.btn_close" x="572" y="0" var="btn_close"/>
			  <List x="8" y="45" repeatY="6" spaceY="30" var="list_build">
			    <buildItemBtn name="render" runtime="game.ui.build.buildItemBtnUI"/>
			  </List>
			  <detailsPanel x="116" y="49" runtime="game.ui.build.detailsPanelUI"/>
			  <upgradePanel x="115" y="165" runtime="game.ui.build.upgradePanelUI"/>
			</View>;
		public function buildUI(){}
		override protected function createChildren():void {
			viewClassMap["game.ui.build.buildItemBtnUI"] = buildItemBtnUI;
			viewClassMap["game.ui.build.detailsPanelUI"] = detailsPanelUI;
			viewClassMap["game.ui.build.upgradePanelUI"] = upgradePanelUI;
			super.createChildren();
			createView(uiView);
		}
	}
}
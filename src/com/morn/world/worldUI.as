/**Created by the Morn,do not modify.*/
package  com.morn.world {
	import morn.core.components.Button;
	import morn.core.components.List;
	import morn.core.components.View;

	public class worldUI extends View {
		public var btn_upgrades:Button = null;
		public var list_build:List = null;
		protected static var uiView:XML =
			<View width="800" height="600">
			  <Image skin="png.comp.blank" x="0" y="0" sizeGrid="10,10,10,10" width="800" height="600"/>
			  <Image skin="png.world.img_world" x="71" y="313" centerX="0" centerY="0"/>
			  <Button skin="png.world.btn_upgrades" x="595" y="491" var="btn_upgrades"/>
			  <List x="121" y="119" var="list_build">
			    <buildItem name="item0" y="11" runtime="game.ui.world.buildItemUI"/>
			    <buildItem name="item1" x="290" runtime="game.ui.world.buildItemUI"/>
			    <buildItem name="item3" x="481" y="240" runtime="game.ui.world.buildItemUI"/>
			    <buildItem name="item4" x="312" y="335" runtime="game.ui.world.buildItemUI"/>
			    <buildItem name="item5" x="80" y="240" runtime="game.ui.world.buildItemUI"/>
			    <buildItem name="item2" x="452" y="65" runtime="game.ui.world.buildItemUI"/>
			  </List>
			</View>;
		public function worldUI(){}
		override protected function createChildren():void {
			viewClassMap["game.ui.world.buildItemUI"] = buildItemUI;
			super.createChildren();
			createView(uiView);
		}
	}
}
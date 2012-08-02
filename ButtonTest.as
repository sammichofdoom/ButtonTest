/**
 * Basic test of left & right click support in TSW
 * @author Sammiches
 */
import gfx.core.UIComponent;
import com.GameInterface.Log;

class com.sammichofdoom.ButtonTest.ButtonTest extends UIComponent
{
	private var coreBtn:MovieClip;
	
	public function ButtonTest() 
	{
		super();
		
		Log.Print(4, "ButtonTest", "ButtonTest::CTOR()");
	}
	
	public function configUI():Void
	{
		super.configUI();
		
		coreBtn.onPress = function(mouseIdx:Number, keyboardOrMouse:Number)
		{
			Log.Print(4, "ButtonTest", "onPress: " + mouseIdx + " & " + keyboardOrMouse);
		}
		
		coreBtn.onPressAux = function(mouseIdx:Number, keyboardOrMouse:Number, buttonIdx:Number)
		{
			Log.Print(4, "ButtonTest", "onPressAux: " + mouseIdx + " & " + keyboardOrMouse + " & " + buttonIdx);
		}
	}
	
}
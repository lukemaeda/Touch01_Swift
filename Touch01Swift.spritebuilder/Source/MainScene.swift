import Foundation

// CCNodeを継承すれば、タッチ処理が実装できる
// CCResponderインターフェースを継承しており、タッチ処理のメソッドが定義されている
class MainScene: CCNode {
    
    override func onEnter() {
        
        // タッチ処理を検出するには、userInteractionEnabledプロパティをtrueに設定
        self.userInteractionEnabled = true
        
        super.onEnter()
        
    }
    
    // 画面に指を一本以上タッチしたときに実行されるメソッド
    override func touchBegan(touch: CCTouch!, withEvent event: CCTouchEvent!) {
        println("touch!!")
    }
    
    // 画面に触れている指が一本以上移動したときに実行されるメソッド
    override func touchMoved(touch: CCTouch!, withEvent event: CCTouchEvent!) {
        println("touchMoved!")
        
    }
    
    // 指を一本以上画面から離したときに実行されるメソッド
    override func touchEnded(touch: CCTouch!, withEvent event: CCTouchEvent!) {
        println("touchEnded!")
    }
    
    // システムイベントがタッチイベントをキャンセルしたときに実行されるメソッド
    override func touchCancelled(touch: CCTouch!, withEvent event: CCTouchEvent!) {
        println("touchCancel!")
    }
}
//
//  test_codeTests.swift
//  test_codeTests
//
//  Created by haruto.makino on 2023/01/05.
//

import XCTest
@testable import test_code

final class test_codeTests: XCTestCase {

    var viewController: ViewController!

    override func setUp() {
        super.setUp()
        
        // ここにセットアップコードを入れます。 このメソッドは、クラス内の各テスト メソッドが呼び出される前に呼び出されます。
        
        // Storyboardからクラスを持ってくるためにViewControllerを持ってきている。
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        self.viewController = storyboard.instantiateInitialViewController() as? ViewController
    }

    override func tearDown() {
        // ここに分解コードを入れます。 このメソッドは、クラス内の各テスト メソッドの呼び出し後に呼び出されます。
        super.tearDown()
    }

    //testから始めるメソッドを作ると自動的にテストコードだと判定される
    func testExample() {
        // これは、機能テスト ケースの例です。
        // XCTAssert および関連する関数を使用して、テストが正しい結果を生成することを確認します。
        viewController.loadViewIfNeeded()
        let subClass = viewController.subClass
        let result = subClass?.multiply(num1: 7, num2: 28)
        
        //最後のここの部分で失敗したかどうかを返してあげる。
        //右の値と同じかどうかを判断する。
        XCTAssertEqual(result, 196)
    }

    func testPerformanceExample() {
        // これは、パフォーマンス テスト ケースの例です。
        self.measure {
            // ここに時間を計測したいコードを入れます。
        }
    }
    
    // test〜〜とつけると自動的にテストコードと判断される。
    func testHogehoge(){
        
    }
}

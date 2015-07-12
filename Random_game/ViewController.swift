//
//  ViewController.swift
//  Random_game
//
//  Created by Nozomi Sakamoto on 2015/07/10.
//  Copyright (c) 2015年 Nozomi Sakamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //ラベルのアウトレット接続
    @IBOutlet weak var label:UILabel!
    //4桁の数字を入れる配列を準備する
    var combination : [Int] = [1,2,3,4]
    
   
    //１〜４までの数をランダムに決める
    var rand1 = Int(arc4random_uniform(4)+1)
    var rand2 = Int(arc4random_uniform(4)+1)
    var rand3 = Int(arc4random_uniform(4)+1)
    var rand4 = Int(arc4random_uniform(4)+1)
    
    
    

    
    //ボタンの初期設定
    private var button1: UIButton!
    private var button2: UIButton!
    private var button3: UIButton!
    private var button4: UIButton!
    
    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Int型であるrandをString型に変換する
        var a = String(rand1)
        var b = String(rand2)
        var c = String(rand3)
        var d = String(rand4)
        
        //配列の要素数を取得する
        var count: Int = combination.count
    
        //ランダムな４桁の数字をラベルに表示する
        label.text = String(stringInterpolation: a,b,c,d)

        
        
    //各々のボタンを作成する
        // Buttonを生成する.
        button1 = UIButton()
        // タグを設定する.
        button1.tag = 1
        // サイズを設定する.
        button1.frame = CGRectMake(0,0,100,100)
        // タイトルを設定する(通常時）
        button1.setTitle("1", forState: UIControlState.Normal)
        button1.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        // タイトルを設定する(ボタンがハイライトされた時)
        button1.setTitle("1", forState: UIControlState.Highlighted)
        button1.setTitleColor(UIColor.redColor(), forState: UIControlState.Highlighted)
        // ボタンの位置を指定する.
        button1.layer.position = CGPoint(x:100, y:400)
        // イベントを追加する.
        button1.addTarget(self, action: "onClickbutton1:", forControlEvents: .TouchUpInside)
        // ボタンをViewに追加する.
        self.view.addSubview(button1)
        
        
        // Buttonを生成する.
        button2 = UIButton()
        // タグを設定する.
        button2.tag = 2
        // サイズを設定する.
        button2.frame = CGRectMake(0,0,100,100)
        // タイトルを設定する(通常時）
        button2.setTitle("2", forState: UIControlState.Normal)
        button2.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        // タイトルを設定する(ボタンがハイライトされた時)
        button2.setTitle("2", forState: UIControlState.Highlighted)
        button2.setTitleColor(UIColor.redColor(), forState: UIControlState.Highlighted)
        // ボタンの位置を指定する.
        button2.layer.position = CGPoint(x:250, y:400)
        // イベントを追加する.
        button2.addTarget(self, action: "onClickbutton2:", forControlEvents: .TouchUpInside)
        // ボタンをViewに追加する.
        self.view.addSubview(button2)
        
        
        // Buttonを生成する.
        button3 = UIButton()
        // タグを設定する.
        button3.tag = 3
        // サイズを設定する.
        button3.frame = CGRectMake(0,0,100,100)
        // タイトルを設定する(通常時）
        button3.setTitle("3", forState: UIControlState.Normal)
        button3.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        // タイトルを設定する(ボタンがハイライトされた時)
        button3.setTitle("3", forState: UIControlState.Highlighted)
        button3.setTitleColor(UIColor.redColor(), forState: UIControlState.Highlighted)
        // ボタンの位置を指定する.
        button3.layer.position = CGPoint(x:100, y:500)
        // イベントを追加する.
        button3.addTarget(self, action: "onClickbutton3:", forControlEvents: .TouchUpInside)
        // ボタンをViewに追加する.
        self.view.addSubview(button3)
        
        
        // Buttonを生成する.
        button4 = UIButton()
        // タグを設定する.
        button4.tag = 4
        // サイズを設定する.
        button4.frame = CGRectMake(0,0,100,100)
        // タイトルを設定する(通常時）
        button4.setTitle("4", forState: UIControlState.Normal)
        button4.setTitleColor(UIColor.blackColor(), forState: UIControlState.Normal)
        // タイトルを設定する(ボタンがハイライトされた時)
        button4.setTitle("4", forState: UIControlState.Highlighted)
        button4.setTitleColor(UIColor.redColor(), forState: UIControlState.Highlighted)
        // ボタンの位置を指定する.
        button4.layer.position = CGPoint(x:250, y:500)
        // イベントを追加する.
        button4.addTarget(self, action: "onClickbutton4:", forControlEvents: .TouchUpInside)
        // ボタンをViewに追加する.
        self.view.addSubview(button4)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    
    
    
    internal func onClickbutton1(button1: UIButton){
        //Int型であるrandをString型に変換する
        var a = String(rand1)
        var b = String(rand2)
        var c = String(rand3)
        var d = String(rand4)
        
        
        //もしrand1が１で、他のrandに　１があれば
        if rand1 == button1.tag && (rand2 == button1.tag || rand3 == button1.tag || rand4 == button1.tag) {
            //rand1は消えるので残りのrand2,rand3,rand4を表示する
            label.text = String (stringInterpolation: b,c,d)
            //もし rand2が1で
        }else if rand1 == button1.tag && rand2 != button1.tag && rand3 != button1.tag && rand4 != button1.tag {
            //rand1は消えるので残りのrand2,rand3,rand4を表示する
            label.text = String (stringInterpolation: b,c,d)
            combination.removeAtIndex(0)
        }else if rand2 == button1.tag && (rand3 == button1.tag || rand4 == button1.tag) {
            ///rand2は消えるので残りのrand3,rand4を表示する
            label.text = String (stringInterpolation: c,d)
        }else if rand2 == button1.tag && rand3 != button1.tag && rand4 != button1.tag {
            ///rand2は消えるので残りのrand3,rand4を表示する
            label.text = String (stringInterpolation: c,d)
            combination.removeAtIndex(0)
        }else if rand3 == button1.tag && rand4 == button1.tag {
            ///rand3は消えるので残りのrand4を表示する
            label.text = String (stringInterpolation: d)
        }else if rand3 == button1.tag && rand4 != button1.tag {
            ///rand3は消えるので残りのrand4を表示する
            label.text = String (stringInterpolation: d)
            combination.removeAtIndex(0)
        }else if rand4 == button1.tag {
            label.text = String (0)
            }
        
        
        }
        

    
    internal func onClickbutton2(button2: UIButton){
    //Int型であるrandをString型に変換する
    var a = String(rand1)
    var b = String(rand2)
    var c = String(rand3)
    var d = String(rand4)
    
    if rand1 == button2.tag {
        //rand1は消えるので残りのrand2,rand3,rand4を表示する
        label.text = String (stringInterpolation: b,c,d)
        //もし rand2が"1"ならば
    }else if rand2 == button2.tag {
        ///rand2は消えるので残りのrand3,rand4を表示する
        label.text = String (stringInterpolation: c,d)
    }else if rand3 == button2.tag {
        ///rand3は消えるので残りのrand4を表示する
        label.text = String (stringInterpolation: d)
    }else if rand4 == button2.tag {
        label.text = String (0)
    }
    //要素[2]を削除する
    combination.removeAtIndex(1)
    
    
}
    internal func onClickbutton3(button3: UIButton){
    //Int型であるrandをString型に変換する
    var a = String(rand1)
    var b = String(rand2)
    var c = String(rand3)
    var d = String(rand4)
    
    if rand1 == button3.tag {
        //rand1は消えるので残りのrand2,rand3,rand4を表示する
        label.text = String (stringInterpolation: b,c,d)
        //もし rand2が"1"ならば
    }else if rand2 == button3.tag {
        ///rand2は消えるので残りのrand3,rand4を表示する
        label.text = String (stringInterpolation: c,d)
    }else if rand3 == button3.tag {
        ///rand3は消えるので残りのrand4を表示する
        label.text = String (stringInterpolation: d)
    }else if rand4 == button3.tag {
        label.text = String (0)
    }
    //要素[1]を削除する
    combination.removeAtIndex(2)
    
}
    internal func onClickbutton4(button4: UIButton){
    //Int型であるrandをString型に変換する
    var a = String(rand1)
    var b = String(rand2)
    var c = String(rand3)
    var d = String(rand4)
    
    if rand1 == button4.tag {
        //rand1は消えるので残りのrand2,rand3,rand4を表示する
        label.text = String (stringInterpolation: b,c,d)
        //もし rand2が"1"ならば
    }else if rand2 == button4.tag {
        ///rand2は消えるので残りのrand3,rand4を表示する
        label.text = String (stringInterpolation: c,d)
    }else if rand3 == button4.tag {
        ///rand3は消えるので残りのrand4を表示する
        label.text = String (stringInterpolation: d)
    }else if rand4 == button4.tag {
        label.text = String (0)
    }
    //要素[1]を削除する
    combination.removeAtIndex(3)
    
}
    }





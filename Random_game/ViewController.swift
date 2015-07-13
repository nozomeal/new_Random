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

    
    //ボタンの初期設定
    private var button1: UIButton!
    private var button2: UIButton!
    private var button3: UIButton!
    private var button4: UIButton!
    
    //4桁の数字を入れる配列を準備する
    var rand : [Int] = [0,0,0,0]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //配列の要素数を取得する
        var n: Int = rand.count
        
        //１〜４までの数をランダムに決める
         rand[0] = Int(arc4random_uniform(4)+1)
         rand[1] = Int(arc4random_uniform(4)+1)
         rand[2] = Int(arc4random_uniform(4)+1)
         rand[3] = Int(arc4random_uniform(4)+1)
        
        
        //ランダムな４桁の数字をラベルに表示する
        label.text = "\(rand[0])\(rand[1])\(rand[2])\(rand[3])"

        
        
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
        
        //配列の要素数を取得する
        var n: Int = rand.count
        
        //要素の数が４個　かつ　rand[0]が１のとき
        if n == 4 && rand[0] == button1.tag {
                //残りの３桁のみとなる
                label.text = "\(rand[1])\(rand[2])\(rand[3])"
                //rand[0]の要素を削除
                rand.removeAtIndex(rand[1])
            
            //要素の数が３個　かつ　rand[1]が１のとき
        }else if n == 3 && rand[1] == button1.tag {
                //残り２桁のみとなる
                label.text = "\(rand[2])\(rand[3])"
                //rand[1]の要素を削除
                rand.removeAtIndex(rand[1])
            
            //要素の数が２個 かつ　rand[2]が１のとき
        }else if n == 2 && rand[2] == button1.tag {
                //残りの１桁を表示
                label.text = "\(rand[3])"
                //rand[2]の要素を削除
                rand.removeAtIndex(rand[2])
    
            //要素の個数が１こ かつ　rand[3]のとき
        }else if n == 1 && rand[3] == button1.tag {
                //rand[3]の要素を削除
                rand.removeAtIndex(rand[3])
            }
            
        }

    

    
    internal func onClickbutton2(button2: UIButton){
       
        //配列の要素数を取得する
        var n: Int = rand.count
        
        if n == 4 && rand[0] == button2.tag {
                label.text = "\(rand[1])\(rand[2])\(rand[3])"
                rand.removeAtIndex(rand[0])
    
        }else if n == 3 && rand[1] == button2.tag {
                label.text = "\(rand[2])\(rand[3])"
                rand.removeAtIndex(rand[1])
            
        }else if n == 2 && rand [2] == button2.tag {
                label.text = "\(rand[3])"
                rand.removeAtIndex(rand[2])
            
        }else if n == 1 && rand[3] == button2.tag {
                label.text = "\(rand[3])"
                rand.removeAtIndex(rand[3])
            
        }
    
}
    internal func onClickbutton3(button3: UIButton){
    
        //配列の要素数を取得する
        var n: Int = rand.count
        
        if n == 4 && rand[0] == button3.tag {
                label.text = "\(rand[1])\(rand[2])\(rand[3])"
                rand.removeAtIndex(rand[0])
            
        }else if n == 3 && rand[1] == button3.tag {
                label.text = "\(rand[2])\(rand[3])"
                rand.removeAtIndex(rand[1])
            
        }else if n == 2 && rand[3] == button3.tag {
                label.text = "\(rand[3])"
                rand.removeAtIndex(rand[2])
        }else if n == 1 && rand[3] == button3.tag {
                label.text = "\(rand[3])"
                rand.removeAtIndex(rand[3])
        }
    }
    
    internal func onClickbutton4(button4: UIButton){
        
        //配列の要素数を取得する
        var n: Int = rand.count
        
        
        if n == 4 && rand[0] == button4.tag {
                //rand1は消えるので残りのrand2,rand3,rand4を表示する
                label.text = "\(rand[1])\(rand[2])\(rand[3])"
                rand.removeAtIndex(rand[0])
            
        }else if n == 3 && rand[1] == button4.tag {
                label.text = "\(rand[2])\(rand[3])"
                rand.removeAtIndex(rand[1])
        }else if n == 2 && rand [2] == button4.tag {
                label.text = "\(rand[3])"
                rand.removeAtIndex(rand[2])
            
        }else if n == 1 && rand[3] == button4.tag {
                label.text = "\(rand[3])"
                rand.removeAtIndex(rand[3])
            }

        
    }

}


//
//  ViewController.swift
//  Random_game
//
//  Created by Nozomi Sakamoto on 2015/07/10.
//  Copyright (c) 2015年 Nozomi Sakamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    /* 
        var n = rand.count   と
        rand.removeAtIndex(rand[0])のような要素を削除するコードを用いて
        かこうとしていたのですが、fatal error: Array index out of range　　がでて
        １度要素を削除したあと　２回目にif文を通るときにすでに要素が消えているので　エラーが出ることは
        わかったのですが、　うまくそれを書き換えることができなかったので、以下の方法で実行しました　　*/
    
    //ラベルのアウトレット接続
    @IBOutlet weak var label:UILabel!

    
    //それぞれのボタンの初期設定
    private var button1: UIButton!
    private var button2: UIButton!
    private var button3: UIButton!
    private var button4: UIButton!
    
    //4桁の数字を入れる配列を準備する
    var rand : [Int] = [0,0,0,0]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
        
        //それぞれ１〜４までの数をランダムに決める
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

    


    //残りの配列の要素数の宣言
    var x: Int = 3
    
    //button1を押したときの動作設定
    internal func onClickbutton1(button1: UIButton){
        
        //要素の数が3個ならば
        if x == 3 {
            //rand[0]が１のとき
            if rand[0] == button1.tag {
                //残りの３桁のみ表示
                label.text = "\(rand[1])\(rand[2])\(rand[3])"
                //残りの要素数は２となる
                x = 2
                //rand[0]の要素を削除
                //rand.removeAtIndex(rand[0])
            }
            
        //要素の数が2個ならば
        }else if x == 2 {
            //rand[1]が１のとき
            if rand[1] == button1.tag {
                //残り２桁のみ表示
                label.text = "\(rand[2])\(rand[3])"
                //残りの要素数は１となる
                x = 1
                //rand[1]の要素を削除
                //rand.removeAtIndex(rand[1])
            }
            
        //要素の数が1個ならば
        }else if x == 1 {
            //rand[2]が１のとき
            if rand[2] == button1.tag {
                //残りの１桁を表示
                label.text = "\(rand[3])"
                //残りの要素数は１となる
                x = 0
                //rand[2]の要素を削除
                //rand.removeAtIndex(rand[2])
            }
        //要素の個数が０個ならば
        }else if x == 0 {
            
            if rand[3] == button1.tag {
                //rand[3]の要素を削除
                //rand.removeAtIndex(rand[3])
                //それぞれ１〜４までの数をランダムに決める
                rand[0] = Int(arc4random_uniform(4)+1)
                rand[1] = Int(arc4random_uniform(4)+1)
                rand[2] = Int(arc4random_uniform(4)+1)
                rand[3] = Int(arc4random_uniform(4)+1)
            
            
                //ランダムな４桁の数字をラベルに表示する
                label.text = "\(rand[0])\(rand[1])\(rand[2])\(rand[3])"
                //また要素が３個となる
                x = 3
            }
        }
        }
    
    
    
    //button1を押したときの動作設定
    internal func onClickbutton2(button2: UIButton){
        
        //要素の数が3個ならば
        if x == 3 {
            //rand[0]が１のとき
            if rand[0] == button2.tag {
                //残りの３桁のみ表示
                label.text = "\(rand[1])\(rand[2])\(rand[3])"
                //残りの要素数は２となる
                x = 2
                //rand[0]の要素を削除
                //rand.removeAtIndex(rand[0])
            }
            
            //要素の数が2個ならば
        }else if x == 2 {
            //rand[1]が１のとき
            if rand[1] == button2.tag {
                //残り２桁のみ表示
                label.text = "\(rand[2])\(rand[3])"
                //残りの要素数は１となる
                x = 1
                //rand[1]の要素を削除
                //rand.removeAtIndex(rand[1])
            }
            
            //要素の数が1個ならば
        }else if x == 1 {
            //rand[2]が１のとき
            if rand[2] == button2.tag {
                //残りの１桁を表示
                label.text = "\(rand[3])"
                //残りの要素数は１となる
                x = 0
                //rand[2]の要素を削除
                //rand.removeAtIndex(rand[2])
            }
            //要素の個数が０個ならば
        }else if x == 0 {
            
            if rand[3] == button2.tag {
                //rand[3]の要素を削除
                //rand.removeAtIndex(rand[3])
                //それぞれ１〜４までの数をランダムに決める
                rand[0] = Int(arc4random_uniform(4)+1)
                rand[1] = Int(arc4random_uniform(4)+1)
                rand[2] = Int(arc4random_uniform(4)+1)
                rand[3] = Int(arc4random_uniform(4)+1)
                
                
                //ランダムな４桁の数字をラベルに表示する
                label.text = "\(rand[0])\(rand[1])\(rand[2])\(rand[3])"
                
                
                //また要素が３個となる
                x = 3
            }
        }
    }

    
    
    
    //button1を押したときの動作設定
    internal func onClickbutton3(button3: UIButton){
        
        //要素の数が3個ならば
        if x == 3 {
            //rand[0]が１のとき
            if rand[0] == button3.tag {
                //残りの３桁のみ表示
                label.text = "\(rand[1])\(rand[2])\(rand[3])"
                //残りの要素数は２となる
                x = 2
                //rand[0]の要素を削除
                //rand.removeAtIndex(rand[0])
            }
            
            //要素の数が2個ならば
        }else if x == 2 {
            //rand[1]が１のとき
            if rand[1] == button3.tag {
                //残り２桁のみ表示
                label.text = "\(rand[2])\(rand[3])"
                //残りの要素数は１となる
                x = 1
                //rand[1]の要素を削除
                //rand.removeAtIndex(rand[1])
            }
            
            //要素の数が1個ならば
        }else if x == 1 {
            //rand[2]が１のとき
            if rand[2] == button3.tag {
                //残りの１桁を表示
                label.text = "\(rand[3])"
                //残りの要素数は１となる
                x = 0
                //rand[2]の要素を削除
                //rand.removeAtIndex(rand[2])
            }
            //要素の個数が０個ならば
        }else if x == 0 {
            
            if rand[3] == button3.tag {
                //rand[3]の要素を削除
                //rand.removeAtIndex(rand[3])
                //それぞれ１〜４までの数をランダムに決める
                rand[0] = Int(arc4random_uniform(4)+1)
                rand[1] = Int(arc4random_uniform(4)+1)
                rand[2] = Int(arc4random_uniform(4)+1)
                rand[3] = Int(arc4random_uniform(4)+1)
                
                
                //ランダムな４桁の数字をラベルに表示する
                label.text = "\(rand[0])\(rand[1])\(rand[2])\(rand[3])"
                
                //また要素が３個となる
                x = 3
            }
        }
    }

    
    
    
    //button1を押したときの動作設定
    internal func onClickbutton4(button1: UIButton){
        
        //要素の数が3個ならば
        if x == 3 {
            //rand[0]が１のとき
            if rand[0] == button4.tag {
                //残りの３桁のみ表示
                label.text = "\(rand[1])\(rand[2])\(rand[3])"
                //残りの要素数は２となる
                x = 2
                //rand[0]の要素を削除
                //rand.removeAtIndex(rand[0])
            }
            
            //要素の数が2個ならば
        }else if x == 2 {
            //rand[1]が１のとき
            if rand[1] == button4.tag {
                //残り２桁のみ表示
                label.text = "\(rand[2])\(rand[3])"
                //残りの要素数は１となる
                x = 1
                //rand[1]の要素を削除
                //rand.removeAtIndex(rand[1])
            }
            
            //要素の数が1個ならば
        }else if x == 1 {
            //rand[2]が１のとき
            if rand[2] == button4.tag {
                //残りの１桁を表示
                label.text = "\(rand[3])"
                //残りの要素数は１となる
                x = 0
                //rand[2]の要素を削除
                //rand.removeAtIndex(rand[2])
            }
            //要素の個数が０個ならば
        }else if x == 0 {
            
            if rand[3] == button4.tag {
                //rand[3]の要素を削除
                //rand.removeAtIndex(rand[3])
                //それぞれ１〜４までの数をランダムに決める
                rand[0] = Int(arc4random_uniform(4)+1)
                rand[1] = Int(arc4random_uniform(4)+1)
                rand[2] = Int(arc4random_uniform(4)+1)
                rand[3] = Int(arc4random_uniform(4)+1)
                
                
                //ランダムな４桁の数字をラベルに表示する
                label.text = "\(rand[0])\(rand[1])\(rand[2])\(rand[3])"
                
                //また要素が３個となる
                x = 3
            }
        }
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}


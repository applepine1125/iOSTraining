//
//  ViewController.swift
//  2-1-1
//
//  Created by 松雪俊 on 2018/06/10.
//  Copyright © 2018年 松雪俊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let label = UILabel(frame: CGRect(x: 20, y: 20, width: 100, height: 21))
        label.text = "Hello World!"
        self.view.addSubview(label)
        
        // UIButton
        let button = UIButton(frame:CGRect(x: 20, y: 50, width: 70, height: 21))
        button.setTitle("button", for: .normal)
        button.backgroundColor = .blue
        self.view.addSubview(button)
        
        // UITextField
        let textField = UITextField(frame: CGRect(x: 20, y: 100, width: 100, height: 21))
        textField.backgroundColor = .blue
        self.view.addSubview(textField)
        
        // UIImageView
//        let imageView = UIImageView(frame: CGRect(x: 20, y: 150, width: 128, height: 128))
//        imageView.image = UIImage(named: "ojisan.png")
//        self.view.addSubview(imageView)
        
        // UITextView
        let textView = UITextView(frame: CGRect(x: 20, y: 300, width: 280, height: 200))
        textView.text = "あのイーハトーヴォのすきとおった風、夏でも底に冷たさをもつ青いそら、うつくしい森で飾られたモリーオ市、郊外のぎらぎらひかる草の波。\nまたそのなかでいっしょになったたくさんのひとたち、ファゼーロとロザーロ、羊飼のミーロや、顔の赤いこどもたち、地主のテーモ、山猫博士のボーガント・デストゥパーゴなど、いまこの暗い巨きな石の建物のなかで考えていると、みんなむかし風のなつかしい青い幻燈のように思われます。では、わたくしはいつかの小さなみだしをつけながら、しずかにあの年のイーハトーヴォの五月から十月までを書きつけましょう。"
        self.view.addSubview(textView)
        
        for view in view.subviews where view is UITextView{
            view.removeFromSuperview()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


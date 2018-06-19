//
//  ViewController.swift
//  2-3-1
//
//  Created by 松雪俊 on 2018/06/10.
//  Copyright © 2018年 松雪俊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    private struct Const {
        static let initialFrame = CGRect(x: 0, y: 0, width: 170, height: 170)
        static let movedFrame = CGRect(x: 150, y: 416, width: 170, height: 170)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        label.frame = Const.initialFrame
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // TODO: アニメーション追加
        moveTo(Const.movedFrame) {
            self.moveTo(Const.initialFrame, completion: nil)
        }
    }
    
    private func moveTo(_ frame: CGRect, completion: (() -> ())?) {
        UIView.animate(withDuration: 2, animations: {
            self.label.frame = frame
        }) { _ in
            completion?()
        }
    }
}


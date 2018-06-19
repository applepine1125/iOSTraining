//
//  ViewController.swift
//  1-1
//
//  Created by 松雪俊 on 2018/06/09.
//  Copyright © 2018年 松雪俊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let string:String
        if let count = navigationController?.viewControllers.count {
            string = "\(count)"
        } else {
            string = ""
        }
        title = string
        
        let rightButton = UIBarButtonItem(title:"pop", style:.plain, target: self, action: #selector(ViewController.rightButtonTapped(_:)))
        navigationItem.rightBarButtonItem = rightButton
    }
    
    @objc func rightButtonTapped(_ sender: UIBarButtonItem) {
        navigationController?.popViewController(animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pushButtonTapped(_ sender: UIButton) {
        guard let viewControlelr = storyboard?.instantiateViewController(withIdentifier: "ViewController") as? ViewController else {
            return
        }
        navigationController?.pushViewController(viewControlelr, animated: true)
    }
    
}


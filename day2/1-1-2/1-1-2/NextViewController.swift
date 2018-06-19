//
//  NextViewController.swift
//  1-1-2
//
//  Created by 松雪俊 on 2018/06/10.
//  Copyright © 2018年 松雪俊. All rights reserved.
//

import UIKit

class NextViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var buttonString: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        guard let buttonString = buttonString else {return}
        label.text = "\(buttonString) tapped"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

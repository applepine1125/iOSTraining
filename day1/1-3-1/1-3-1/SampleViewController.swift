//
//  SampleViewController.swift
//  1-3-1
//
//  Created by 松雪俊 on 2018/06/09.
//  Copyright © 2018年 松雪俊. All rights reserved.
//

import UIKit

class SampleViewController: UIViewController {
    @IBOutlet weak var label: UILabel!
    @IBAction func buttontapped(_ sender: UIButton) {
     label.text = "YES"
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        label.text = "Test"
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

//
//  SampleViewController.swift
//  1-3-1
//
//  Created by 松雪俊 on 2018/06/09.
//  Copyright © 2018年 松雪俊. All rights reserved.
//

import UIKit

class SampleViewController: UIViewController, SecondViewControllerDelegate, ThirdViewControllerDelegate {
    
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        label.text = "Test"
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttontapped(_ sender: UIButton) {
        label.text = "YES"
    }
    
    @IBAction func secondButtonTapped(_ sender: UIButton) {
        guard let secondViewController = storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        else {
            return
        }
        secondViewController.delegate = self
        present(secondViewController, animated: true, completion: nil)
    }
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        guard let identifier = segue.identifier, identifier == "presentSecondViewController" else {
            return
        }
    }
   
    func secondViewController(_ viewController: SecondViewController, didTapButton button: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    func thirdViewController(_ viewController: ThirdViewController, didTapButton button: UIButton) {
         dismiss(animated: true, completion: nil)
    }
    
    @IBAction func unwindToSampleViewController(segue: UIStoryboardSegue){}
    
    @IBAction func fourthButtonTapped(_ sender: UIButton){
        guard let thirdViewController = storyboard?.instantiateViewController(withIdentifier: "ThirdViewController") as? ThirdViewController
            else {
                return
        }
        thirdViewController.delegate = self
        present(thirdViewController, animated: true, completion: nil)
    }
}

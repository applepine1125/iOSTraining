//
//  ViewController.swift
//  2-1
//
//  Created by 松雪俊 on 2018/06/25.
//  Copyright © 2018年 松雪俊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func cameraButtonTapped(_ sender: UIButton) {
        //TODO: UIImagePickerControllerの作成
        let imagePickerVC = UIImagePickerController()
        
        imagePickerVC.delegate = self
        imagePickerVC.sourceType = .photoLibrary
        imagePickerVC.allowsEditing = true
        
        present(imagePickerVC, animated: true, completion: nil)
    }
}

//MARK: - UIImagePickerControllerDelegate, UINavigationControllerDelegate
extension ViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    //TODO: delegateメソッドの追加
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        dismiss(animated: true, completion: nil)
        imageView.image = info[UIImagePickerControllerEditedImage] as? UIImage
    }
    
}


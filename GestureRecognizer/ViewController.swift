//
//  ViewController.swift
//  GestureRecognizer
//
//  Created by Vedat Dokuzkardeş on 8.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    var katy = true
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }

    @objc func changePic(){

        
        if katy == true {
            imageView.image = UIImage(named: "yellow")
            myLbl.text = "YELLOW KATY 🥰"
            katy = false
        }else {
            imageView.image = UIImage(named: "black")
            myLbl.text = "BLACK KATY 🥰"
            katy = true
        }
        
    }

}


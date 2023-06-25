//
//  ViewController.swift
//  swift_chpater3_misson
//
//  Created by 해인 on 2023/06/04.
//

import UIKit

class ViewController: UIViewController {
    
    var maxImage = 6
    var numImgae = 1
    
    @IBOutlet var uiImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        uiImage.image = UIImage(named: "1.png")
    }

    @IBAction func beforeBtn(_ sender: UIButton) {
        numImgae = numImgae-1
        
        if(numImgae<1){
            numImgae = maxImage
        }
        
        let image = String(numImgae)+".png"
        uiImage.image = UIImage(named: image)
    }
    
    
    @IBAction func afterBtn(_ sender: UIButton) {
        numImgae = numImgae+1
        
        if(numImgae > maxImage){
            numImgae = 1
        }
        
        let image = String(numImgae)+".png"
        uiImage.image = UIImage(named: image)
    }
    
}


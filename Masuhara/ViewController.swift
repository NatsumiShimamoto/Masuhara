//
//  ViewController.swift
//  Masuhara
//
//  Created by 嶋本夏海 on 2016/04/07.
//  Copyright © 2016年 嶋本夏海. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var masuLabel : UILabel!
    @IBOutlet var masuBtn : UIButton!
    @IBOutlet var masuImgView : UIImageView!
   
    var masuAge : Int! = -1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        masuImgView.image = UIImage(named: "frame.png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func masuPlus() {
        masuAge = masuAge + 1
        masuLabel.text = String(masuAge)
        
        if(masuAge == 0){
            masuImgView.image = UIImage(named: "baby.png")
        }
        else if(masuAge == 10){
            masuImgView.image = UIImage(named: "child.png")
        }
        else if(masuAge == 17){
            masuImgView.image = UIImage(named: "teen.png")
        }
        else if(masuAge == 24){
            masuImgView.image = UIImage(named: "adult.png")
        }
        else if(masuAge == 27){
            masuImgView.image = UIImage(named: "now.png")
            masuBtn.enabled = false
        }
    }
}


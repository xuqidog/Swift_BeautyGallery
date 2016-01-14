//
//  ViewController.swift
//  BeautyGallery
//
//  Created by xuqidong on 15/8/28.
//  Copyright (c) 2015年 xuqidong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var beautyPicker: UIPickerView!
    
    let beauties = ["范冰冰","赵薇","王菲","AnglBayBay"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        beautyPicker.dataSource = self
        beautyPicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "GoToGallery" {
            let index = beautyPicker.selectedRowInComponent(0)
            
            var imageName: String?
            switch index {
            case 0:
                imageName = "11"
            case 1:
                imageName = "22"
            case 2:
                imageName = "33"
            case 3:
                imageName = "44"
            default:
                imageName = nil
            }
            
            var vc = segue.destinationViewController as! GalleryViewController
            vc.imageName = imageName
        }
    }

    //Unwind Segue
    @IBAction func close(segue: UIStoryboardSegue) {
        println("close")
    }
    
}






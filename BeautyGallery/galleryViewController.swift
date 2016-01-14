//
//  galleryViewController.swift
//  BeautyGallery
//
//  Created by xuqidong on 15/8/28.
//  Copyright (c) 2015年 xuqidong. All rights reserved.
//

import UIKit
import Social//分享

class GalleryViewController: UIViewController {
    
    @IBOutlet var beautyImage: UIImageView!
    
    var imageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if let name = imageName {
            beautyImage.image = UIImage(named: imageName!)
            
            //添加title
            switch name {
            case "11":
                navigationItem.title = "范冰冰"
            case "22":
                navigationItem.title = "赵薇"
            case "33":
                navigationItem.title = "王菲"
            case "44":
                navigationItem.title = "AnglBayBay"
            default:
                navigationItem.title = "女神画廊"
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //分享
    @IBAction func shareTapped(sender: AnyObject) {
        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        controller.setInitialText("一起来玩女神画廊App吧，就在http://www.baidu.com")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }

 
    

    
}
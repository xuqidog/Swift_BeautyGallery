
//
//  KoreanViewController.swift
//  BeautyGallery
//
//  Created by xuqidong on 15/8/28.
//  Copyright (c) 2015年 xuqidong. All rights reserved.
//

import UIKit
import Social


class KoreanViewController: UIViewController {
    
    @IBOutlet var beautyImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //facebook
    @IBAction func facebookTapped(sender: AnyObject) {
        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeFacebook)
        controller.setInitialText("一起来玩女神画廊App吧，就在http://www.baidu.com")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    @IBAction func twitterTappad(sender: AnyObject) {
        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeTwitter)
        controller.setInitialText("一起来玩女神画廊App吧，就在http://www.baidu.com")
        controller.addImage(beautyImage.image)
        self.presentViewController(controller, animated: true, completion: nil)
    }
    
    
    @IBAction func weiboTapped(sender: AnyObject) {
//        var controller: SLComposeViewController = SLComposeViewController(forServiceType: SLServiceTypeSinaWeibo)
//        controller.setInitialText("一起来玩女神画廊App吧，就在http://www.baidu.com")
//        controller.addImage(beautyImage.image)
//        self.presentViewController(controller, animated: true, completion: nil)

    }
    

    
    
}
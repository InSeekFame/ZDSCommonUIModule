//
//  ViewController.swift
//  ZDSCommonUIModule
//
//  Created by InSeekFame on 05/16/2022.
//  Copyright (c) 2022 InSeekFame. All rights reserved.
//

import UIKit
//import ZDSCommonUIModule
import ZDSCommonUIModule

class ViewController: UIViewController {

  @IBOutlet weak var imageView: UIImageView!
  override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
      
//      print(sh)
//      print(statusBarHeight())
//      myPrint("1234")
      myPrint2("2222")
    
    //资源路径 /Frameworks/ZDSCommonUIModule.framework/ZDSCommonUIModule
    let path = Bundle.main.path(forResource: "/Frameworks/ZDSCommonUIModule.framework/ZDSCommonUIModule", ofType: "bundle")
    let bundle = Bundle.init(path: path!)
    let image = UIImage.init(named: "share_wechat", in: bundle, compatibleWith: nil)
    
    imageView.image = image
    print(path)
    print(bundle)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


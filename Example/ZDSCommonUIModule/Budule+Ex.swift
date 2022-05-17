//
//  Budule+Ex.swift
//  ZDSCommonUIModule_Example
//
//  Created by CL9421 on 2022/5/17.
//  Copyright © 2022 CocoaPods. All rights reserved.
//

import Foundation

import UIKit

extension Bundle {
   public class func bundledImage(named name: String) -> UIImage? {
       if let path = Bundle.main.path(forResource: "ZDSCommonUIModule.framework/ZDSCommonUIModule", ofType: "bundle") {
           if let bundle = Bundle(path: path) {
               //获取图片失败，bundle 是 bundle 地址，name 是图片名，但是 image 为 nil
               if let image = UIImage(named: name, in: bundle, compatibleWith: nil) {
                   print("named___compatibleWith_________success__\(name)")
                   return image
               }
           }
       }
        return nil
    }
}

//extension Bundle {
//
//    // 定义一个静态变量xxxBundle，用于获取项目本地的Bundle文件：XXX.bundle。
//    static var xxxBundle: Bundle{
//        return Bundle.init(path:Bundle.init(for: xxxComponent.self).path(forResource: "XXX", ofType: "bundle")!)!
//    }
//
//    // 定义一个静态变量arrowImage，用于获取图片文件：“arrow.png”。
//    static var arrowImage: UIImage{
//        return (UIImage.init(contentsOfFile: self.xxxBundle.path(forResource: "arrow@2x", ofType: "png")!)?.withRenderingMode(UIImageRenderingMode.alwaysTemplate))!
//    }
//
//    // 类方法
//    class func localizedString(forKey key: String) -> String {
//        return self.localizedString(forKey: key, value: nil)
//    }
//
//    // 参数value为可选值，可以传值为nil。
//    class func localizedString(forKey key: String, value: String?) -> String {
//        var language = Locale.preferredLanguages.first!
//        // （iOS获取的语言字符串比较不稳定）目前框架只处理en、zh-Hans、zh-Hant三种情况，其他按照系统默认处理
//        if language.hasPrefix("en") {
//            language = "en"
//        } else if language.hasPrefix("zh") {
//            language = "zh-Hans"
//        } else {
//            language = "en"
//        }
//
//        let bundle = Bundle.init(path: self.xxxBundle.path(forResource: language, ofType: "lproj")!)
//        let v = bundle?.localizedString(forKey: key, value: value, table: nil)
//        return Bundle.main.localizedString(forKey: key, value: v, table: nil)
//    }
//}

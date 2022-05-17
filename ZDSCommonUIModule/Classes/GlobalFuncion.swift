//
//  CEDefine.swift
//  Widget
//
//  Created by lzy on 2021/6/2.
//  全局函数

import UIKit

// MARK: - 获取控制器 yangyu
///顶级页面
//func CYCurrentViewController() -> (UIViewController?) {
//    var window = UIApplication.shared.keyWindow
//    if window?.windowLevel != UIWindow.Level.normal{
//        let windows = UIApplication.shared.windows
//        for  windowTemp in windows{
//            if windowTemp.windowLevel == UIWindow.Level.normal{
//                window = windowTemp
//                break
//            }
//        }
//    }
//    let vc = window?.rootViewController
//    return CYCurrentViewController(vc)
//}

public func zdsPrint(){
  print("我是zds的第三方库")
  print("sw=\(sw),sh=\(sh)")
}

public func CYCurrentViewController(_ vc :UIViewController?) -> UIViewController? {
    if vc == nil {
        return nil
    }
    if let presentVC = vc?.presentedViewController {
        return CYCurrentViewController(presentVC)
    }
    else if let tabVC = vc as? UITabBarController {
        if let selectVC = tabVC.selectedViewController {
            return CYCurrentViewController(selectVC)
        }
        return nil
    }
    else if let naiVC = vc as? UINavigationController {
        return CYCurrentViewController(naiVC.visibleViewController)
    }
    else {
        return vc
    }
}



// MARK: - 定时器 实际指针地址
public func NJcountDownTimer(_ number: UnsafeMutablePointer<Int>,_ BloakVoid:@escaping ()->Void, endblockVoid: (()->Void)?) {
  if #available(iOS 10.0, *) {
    Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
      number.pointee -= 1
      if number.pointee <= 0 {
        endblockVoid?()
        timer.invalidate()
        return
      }
      BloakVoid()
    }
  } else {
    // Fallback on earlier versions
  }
}



// MARK: 16进制颜色
public func UIColorFromHex(hex:Int) -> UIColor {
    return UIColor(red: CGFloat((((hex & 0xFF0000) >> 16 ))) / 255.0,
                   green: CGFloat((((hex & 0xFF00 ) >> 8 ))) / 255.0,
                   blue: CGFloat(((hex & 0xFF ))) / 255.0,
                   alpha: 1.0)
}

// MARK: 包括中文繁体
func isChinese() -> Bool{
    let locale:String = Locale.preferredLanguages.first!
    return locale.contains("zh")
}


func isSystem12Hour() -> Bool {
    
    let locale = Locale.current

    let dateFormat = DateFormatter.dateFormat(fromTemplate: "j", options: 0, locale: locale)

    if dateFormat?.range(of: "a") != nil {
        return true
    }else {
        return false
    }
}



///获取两个时间区间字符串
//func getDeadLineTimeHandle(beginTime:TimeInterval, deadlineTime: TimeInterval)->String{
//
//  //1、如果计划周期跨年显示：yyyy/mm/dd 至 yyyy/mm/dd
//  //2、如果计划周期未跨年显示： yyyy/mm/dd 至 mm/dd
//  let yearDateFormt = "yyyy"
//  let yearStr1 = beginTime.toTimeStr(dateFormate: .customFormat(yearDateFormt))
//  let yearStr2 = deadlineTime.toTimeStr(dateFormate: .customFormat(yearDateFormt))
//
//  let dateFormt = "yyyy/MM/dd"
//  var dateFormt2 = "yyyy/MM/dd"
////  print("yearStr1:\(yearStr1), yearStr2:\(yearStr2)")
//  if yearStr1 == yearStr2{
//    dateFormt2 = "MM/dd"
//  }
//
//  let taskBeginTime = beginTime.toTimeStr(dateFormate: .customFormat(dateFormt))
//  let taskDeadlineTime = deadlineTime.toTimeStr(dateFormate: .customFormat(dateFormt2))
//
//  let timeStr = "\(taskBeginTime) 至 \(taskDeadlineTime)"
////  print("转化后时间:\(timeStr)")
//  return timeStr
//}


//MARK: - 获取文本size 获取uilabel高度 获取高度
func getLabelTextHeight(string:String,font:UIFont,width:CGFloat) -> CGFloat{
    let size = CGSize(width: width, height:CGFloat(MAXFLOAT))
    let dic = NSDictionary(object: font, forKey : kCTFontAttributeName as! NSCopying)
    let stringSize:CGSize = string.boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: dic as? [NSAttributedString.Key:Any], context:nil).size
    return stringSize.height
}

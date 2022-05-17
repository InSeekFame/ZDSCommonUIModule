//
//  SizeDefine.swift
//  SHps
//
//  Created by CL9421 on 2021/11/8.
//

import UIKit

///设备尺寸
public let CYEquipmentSize:CGSize = UIScreen.main.bounds.size

//头像高度
public let sw = UIScreen.main.bounds.size.width
public let sh = UIScreen.main.bounds.size.height

public let SPlayerBottomHeight : CGFloat = 54.0

public var tabBarHeight: CGFloat  = 49.0


public func statusBarHeight() -> CGFloat {
    let statusBarHeight: CGFloat = UIApplication.shared.statusBarFrame.height
    return statusBarHeight
}

// MARK: - 底部安全区域
public let safeAreaBottomHeight: CGFloat = {
    if #available(iOS 11, *) {
        guard let w = UIApplication.shared.delegate?.window, let unwrapedWindow = w else {
            return 0.0
        }
        
        if unwrapedWindow.safeAreaInsets.top > 20.0 || unwrapedWindow.safeAreaInsets.bottom > 0 {
            return unwrapedWindow.safeAreaInsets.bottom
        }
    }
    return 0.0
}()

///判断是否是带刘海机型
public var isX: Bool {
    if #available(iOS 11, *) {
        guard let w = UIApplication.shared.delegate?.window, let unwrapedWindow = w else {
            return false
        }
        
        if unwrapedWindow.safeAreaInsets.top > 20.0 || unwrapedWindow.safeAreaInsets.bottom > 0 {
            return true
        }
    }
    return false
}

/// 是否是iPad
/// - Returns: true：是
public func isPad() -> Bool {
    return UIDevice.current.userInterfaceIdiom == .pad
}

/// 获取导航栏高度（不包含状态栏）
/// - Returns: 高度
public func kScreenNaviHeight() -> CGFloat {
    return 44
}

/// 获取顶部安全区高度
/// - Returns: 高度
public func kTopSafeHeight() -> CGFloat {
    return stateBarHeight()
}

/// 获取底部安全区高度
/// - Returns: 高度
public func kBottomSafeHeight() -> CGFloat {
    let height:CGFloat = (isX == true) ? 33 : 0
    return height
}

/// 获取顶部高度
/// - Returns: 高度
public func kScreenSafeTopHeight() -> CGFloat {
    return kScreenNaviHeight() + kTopSafeHeight()
}


public func stateBarHeight() -> CGFloat{
    let height:CGFloat = (isX == true) ? 44 : 20
    return height
}

public func navigationBarHeight() -> CGFloat{
    let height:CGFloat = (isX == true) ? 88.0 : 64.0
    return height
}

public func largeBarHeight() -> CGFloat{
    let height:CGFloat = 52
    return height
}

public func kScreenWidth() -> CGFloat{
    return  UIScreen.main.bounds.size.width
}

public func kScreenHeight() -> CGFloat{
    return  UIScreen.main.bounds.size.height
}
public func myHeadImageHolder() -> UIImage{
    return  UIImage(named: "nr_placeholder_140*140")!
}

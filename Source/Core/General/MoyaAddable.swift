//
//  MoyaAddable.swift
//  ElegantMoya
//
//  Created by John on 2019/6/12.
//  Copyright © 2019 Ganguo. All rights reserved.
//

import Foundation

/// 新增的协议
public protocol MoyaAddable {
    /// 缓存策略，默认为 fetchIgnoringCacheData，即不开启缓存
    var cachePolicy: CachePolicy? { get }
    /// 是否显示显示加载，默认为 false，
    /// true 的话，会自动显示加载 loading 和服务器返回的错误提示语，和自定义显示的 successMessage
    var isShowHud: Bool { get }
    /// 成功时显示的提示语（同时需要 isShowHud 为 true），为空时不显示。默认为空
    var successMessage: String? { get }
}

/// 默认实现
public extension MoyaAddable {
    var cachePolicy: CachePolicy? {
        return .fetchIgnoringCacheData
    }

    var isShowHud: Bool {
        return true
    }

    var successMessage: String? {
        return nil
    }
}

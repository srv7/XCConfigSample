//
//  Config.swift
//  XCConfigSample
//
//  Created by 刘波 on 2020/7/31.
//  Copyright © 2020 struggleblog. All rights reserved.
//

import Foundation

enum Config {
    static let appHost: String = Bundle.main[envKey: "AppHost"]
    static let enableLogging: Bool = Bundle.main[envKey: "EnableLogging"]
    static let sdkAppID: Int = Bundle.main[envKey: "SDKAppID"]
}

private extension Bundle {
    enum Error: String, Swift.Error {
        case missingEnvrimentConfiguration = "Info.plist 不存在 AppConfig 配置字典"
        case missingKey = "Info.plist 中不存在要查找的 key"
        case invalidValue = "解析出的值类型与指定类型不匹配"
    }
    
    
    subscript<T>(envKey key: String) -> T where T: LosslessStringConvertible {
        guard let dict  = infoDictionary,
              let envDict = dict["AppConfig"] as? [String: Any] else {
            fatalError("\(Error.missingEnvrimentConfiguration.rawValue)")
        }
        guard let object = envDict[key] else {
            fatalError("\(Error.missingKey.rawValue): \(key)")
        }
        switch object {
        case let value as T:
            return value
        case let string as String:
            guard let value = T(string) else { fallthrough }
            return value
        default:
            fatalError("\(Error.invalidValue.rawValue): \(key)")
        }
    }
}

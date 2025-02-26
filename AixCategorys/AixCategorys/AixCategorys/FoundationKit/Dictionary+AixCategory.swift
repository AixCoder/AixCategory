//
//  Dictionary+AixCategory.swift
//  AixCategorys
//
//  Created by liuhongnian on 2021/4/7.
//  Copyright © 2021 liuhongnian. All rights reserved.
//

import Foundation

extension Dictionary {
    
    func stringValue(for key: String) -> String {
        
        if self.isEmpty || self.keys.count == 0 {
            print("empty dictionary")
            return ""
        }
        
        if self is [String: Any] {
            
            let dictionary = self as! [String: Any]
            
            if let value = dictionary[key] {
                switch value {
                case let valueNSString as NSString: return valueNSString as String
                case let valueString as String: return valueString
                case let valueNumber as NSNumber: return String(format: "%@", valueNumber)
                default:
                    return ""
                }
            }else{
                print("dictionary not have key:%@",key)
                return ""
            }
            
        }
        
        return ""
        
    }
}

//
//  ZhConverterFactory.swift
//  SwiftZhConverter
//

import Foundation

public enum ZhCode {
    case TRANDITIONAL, SIMPLIFIED
}

public class ZhConverterFactory {
    public class func getConverter(zhCode: ZhCode) -> ZhConverter {
        
        switch zhCode {
        case .TRANDITIONAL :
            return TraditionalZhConverter()
        case .SIMPLIFIED :
            return SimplifiedZhConverter()
        default:
            return TraditionalZhConverter()
        }
        
    }
}

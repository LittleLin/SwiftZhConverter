//
//  ZhConverter.swift
//  SwiftZhConverter
//

import Foundation

public protocol ZhConverter {
    func convert(rawText: String) -> String
}
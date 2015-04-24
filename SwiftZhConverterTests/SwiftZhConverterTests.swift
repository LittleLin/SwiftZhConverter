//
//  SwiftZhConverterTests.swift
//  SwiftZhConverterTests
//

import UIKit
import XCTest
import SwiftZhConverter;

class SwiftZhConverterTests: XCTestCase {
    func testTranditionalConvertToSimplified() {
        //// Arrange
        var converter = ZhConverterFactory.getConverter(ZhCode.SIMPLIFIED)
        
        //// Act
        var result = converter.convert("書館員是很清閒的工作嗎？")
        
        // This is an example of a functional test case.
        XCTAssertEqual("书馆员是很清闲的工作吗？", result, "Pass")
    }
    
    func testSimplifiedConvertToTranditional() {
        //// Arrange
        var converter = ZhConverterFactory.getConverter(ZhCode.TRANDITIONAL)
        
        //// Act
        var result = converter.convert("书馆员是很清闲的工作吗？")
        
        // This is an example of a functional test case.
        XCTAssertEqual("書館員是很清閒的工作嗎？", result, "Pass")
    }
}

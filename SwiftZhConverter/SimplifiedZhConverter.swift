//
//  SimplifiedZhConverter.swift
//  SwiftZhConverter
//

import Foundation

public class SimplifiedZhConverter : ZhConverter {
    public init() {
        
    }
    
    public func convert(rawText: String) -> String {
        var location = NSBundle(identifier: "SwiftZhConverter")?.resourcePath!.stringByAppendingString("/word_t2s.txt")
        
        var mappingTable = Dictionary<Character, Character>();
        if let var reader = StreamReader(path: location!) {
            while let line = reader.nextLine() {
                var tokens = split(line) {$0 == ","}
                var token1 = tokens[0]
                var token2 = tokens[1]
                mappingTable[token1[0]] = token2[0]
            }
        }
        
        var newText = "";
        for char in rawText {
            if let tc = mappingTable[char] {
                var buf = mappingTable[char]
                newText.append(tc);
            } else {
                newText.append(char)
            }
        }
        
        return newText;
    }
}
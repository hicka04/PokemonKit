//
//  Level.swift
//  
//
//  Created by hicka04 on 2020/10/06.
//

import Foundation

extension Pokemon {
    public struct Level: ExpressibleByIntegerLiteral {
        public let value: UInt8
        
        public init(integerLiteral value: UInt8) {
            guard value <= 100 else {
                fatalError("LevelOutOfBoundsError")
            }
            
            self.value = value
        }
    }
}

let level: Pokemon.Level = 100


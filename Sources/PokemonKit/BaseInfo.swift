//
//  BaseInfo.swift
//  
//
//  Created by hicka04 on 2020/10/04.
//

import Foundation

extension Pokemon {
    public struct BaseInfo {
        public let number: Number
        public let name: String
        public let types: (Type, Type?)
        public let baseStats: BaseStats
    }
}

extension Pokemon.BaseInfo {
    public struct Number: RawRepresentable {
        public let rawValue: UInt16
        
        public init(rawValue: UInt16) {
            self.rawValue = rawValue
        }
    }
}

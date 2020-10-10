//
//  Level.swift
//  
//
//  Created by hicka04 on 2020/10/06.
//

import Foundation

extension Pokemon {
    public struct Level: RawRepresentable {
        public var rawValue: UInt8
        
        public init?(rawValue: UInt8) {
            guard rawValue <= 100 else {
                return nil
            }
            
            self.rawValue = rawValue
        }
    }
}

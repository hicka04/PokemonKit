//
//  BaseInfo.swift
//  
//
//  Created by hicka04 on 2020/10/04.
//

import Foundation

extension Pokemon {
    public struct BaseInfo {
        public let name: String
        public let types: (Type, Type?)
        public let baseStats: BaseStats
    }
}

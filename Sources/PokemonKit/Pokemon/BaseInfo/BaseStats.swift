//
//  BaseStats.swift
//  
//
//  Created by hicka04 on 2020/10/04.
//

import Foundation

extension Pokemon.BaseInfo {
    /// 種族値
    public struct BaseStats: Statuses {
        public let hitPoints: BaseStat
        public let attack: BaseStat
        public let defense: BaseStat
        public let specialAttack: BaseStat
        public let specialDefense: BaseStat
        public let speed: BaseStat
        
        public init(
            hitPoints: BaseStat,
            attack: BaseStat,
            defense: BaseStat,
            specialAttack: BaseStat,
            specialDefense: BaseStat,
            speed: BaseStat
        ) {
            self.hitPoints = hitPoints
            self.attack = attack
            self.defense = defense
            self.specialAttack = specialAttack
            self.specialDefense = specialDefense
            self.speed = speed
        }
    }
}

extension Pokemon.BaseInfo.BaseStats {
    public struct BaseStat: Status {
        static var max: UInt64 = .init(UInt8.max)
        
        public var rawValue: UInt8
        
        public init(rawValue: UInt8) {
            self.rawValue = rawValue
        }
    }
}

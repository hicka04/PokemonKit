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
        static var max: Int = 255
        
        public var rawValue: Int
        
        public init?(rawValue: Int) {
            guard (0...Self.max).contains(rawValue) else {
                return nil
            }
            
            self.rawValue = rawValue
        }
    }
}

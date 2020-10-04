//
//  BaseStats.swift
//  
//
//  Created by hicka04 on 2020/10/04.
//

import Foundation

extension Pokemon.BaseInfo {
    /// 種族値
    public struct BaseStats: Status {
        public let hitPoints: UInt16
        public let attack: UInt16
        public let defense: UInt16
        public let specialAttack: UInt16
        public let specialDefense: UInt16
        public let speed: UInt16
        
        public init(
            hitPoints: UInt16,
            attack: UInt16,
            defense: UInt16,
            specialAttack: UInt16,
            specialDefense: UInt16,
            speed: UInt16
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

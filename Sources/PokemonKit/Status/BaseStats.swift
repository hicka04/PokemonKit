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
        public let hitPoints: UInt8
        public let attack: UInt8
        public let defense: UInt8
        public let specialAttack: UInt8
        public let specialDefense: UInt8
        public let speed: UInt8
        
        public init(
            hitPoints: UInt8,
            attack: UInt8,
            defense: UInt8,
            specialAttack: UInt8,
            specialDefense: UInt8,
            speed: UInt8
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

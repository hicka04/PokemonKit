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
        let hitPoints: UInt16
        let attack: UInt16
        let defense: UInt16
        let specialAttack: UInt16
        let specialDefense: UInt16
        let speed: UInt16
    }
}

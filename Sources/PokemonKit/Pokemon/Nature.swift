//
//  Nature.swift
//  
//
//  Created by hicka04 on 2020/10/19.
//

import Foundation

extension Pokemon {
    /// 性格
    public enum Nature {
        // 攻撃上昇補正
        /// さびしがり
        case lonely
        /// いじっぱり
        case adamant
        /// やんちゃ
        case naughty
        /// ゆうかん
        case brave
        // 防御上昇補正
        /// ずぶとい
        case bold
        /// わんぱく
        case impish
        /// のうてんき
        case lax
        /// のんき
        case relaxed
        // 特攻上昇補正
        /// ひかえめ
        case modest
        /// おっとり
        case mild
        /// うっかりや
        case rash
        /// れいせい
        case quiet
        // 特防上昇補正
        /// おだやか
        case clam
        /// おとなしい
        case gentle
        /// しんちょう
        case careful
        /// なまいき
        case sassy
        // 素早さ上昇補正
        /// おくびょう
        case timid
        /// せっかち
        case hasty
        /// ようき
        case jolly
        /// むじゃき
        case naive
        // 無補正
        /// がんばりや
        case hardy
        /// すなお
        case docile
        /// まじめ
        case serious
        /// てれや
        case bashful
        /// きまぐれ
        case quirky
    }
}

extension Pokemon.Nature {
    public struct Correction {
        public enum Status {
            case attack
            case defense
            case specialAttack
            case specialDefense
            case speed
        }
        
        public enum Direction {
            case upward
            case downward
        }
        
        public let upward: Status
        public let downward: Status
        
        public init(upward: Status, downward: Status) {
            self.upward = upward
            self.downward = downward
        }
        
        public func direction(with status: Status) -> Direction? {
            switch status {
            case self.upward:   return .upward
            case self.downward: return .downward
            default:            return nil
            }
        }
    }
    
    public var correction: Correction? {
        switch self {
        // 攻撃上昇補正
        case .lonely:
            return .init(upward: .attack, downward: .defense)
        case .adamant:
            return .init(upward: .attack, downward: .specialAttack)
        case .naughty:
            return .init(upward: .attack, downward: .specialDefense)
        case .brave:
            return .init(upward: .attack, downward: .speed)
        // 防御上昇補正
        case .bold:
            return .init(upward: .defense, downward: .attack)
        case .impish:
            return .init(upward: .defense, downward: .specialAttack)
        case .lax:
            return .init(upward: .defense, downward: .specialDefense)
        case .relaxed:
            return .init(upward: .defense, downward: .speed)
        // 特攻上昇補正
        case .modest:
            return .init(upward: .specialAttack, downward: .attack)
        case .mild:
            return .init(upward: .specialAttack, downward: .defense)
        case .rash:
            return .init(upward: .specialAttack, downward: .specialDefense)
        case .quiet:
            return .init(upward: .specialAttack, downward: .speed)
        // 特防上昇補正
        case .clam:
            return .init(upward: .specialDefense, downward: .attack)
        case .gentle:
            return .init(upward: .specialDefense, downward: .defense)
        case .careful:
            return .init(upward: .specialDefense, downward: .specialAttack)
        case .sassy:
            return .init(upward: .specialDefense, downward: .speed)
        // 素早さ上昇補正
        case .timid:
            return .init(upward: .speed, downward: .attack)
        case .hasty:
            return .init(upward: .speed, downward: .defense)
        case .jolly:
            return .init(upward: .speed, downward: .specialAttack)
        case .naive:
            return .init(upward: .speed, downward: .specialDefense)
        // 無補正
        case .hardy, .docile, .serious, .bashful, .quirky:
            return nil
        }
    }
}

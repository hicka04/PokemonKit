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
    public enum CorrectionStatus {
        case attack
        case defense
        case specialAttack
        case specialDefense
        case speed
    }
    
    public var correction: (up: CorrectionStatus, down: CorrectionStatus)? {
        switch self {
        // 攻撃上昇補正
        case .lonely:
            return (.attack, .defense)
        case .adamant:
            return (.attack, .specialAttack)
        case .naughty:
            return (.attack, .specialDefense)
        case .brave:
            return (.attack, .speed)
        // 防御上昇補正
        case .bold:
            return (.defense, .attack)
        case .impish:
            return (.defense, .specialAttack)
        case .lax:
            return (.defense, .specialDefense)
        case .relaxed:
            return (.defense, .speed)
        // 特攻上昇補正
        case .modest:
            return (.specialAttack, .attack)
        case .mild:
            return (.specialAttack, .defense)
        case .rash:
            return (.specialAttack, .specialDefense)
        case .quiet:
            return (.specialAttack, .speed)
        // 特防上昇補正
        case .clam:
            return (.specialDefense, .attack)
        case .gentle:
            return (.specialDefense, .defense)
        case .careful:
            return (.specialDefense, .specialAttack)
        case .sassy:
            return (.specialDefense, .speed)
        // 素早さ上昇補正
        case .timid:
            return (.speed, .attack)
        case .hasty:
            return (.speed, .defense)
        case .jolly:
            return (.speed, .specialAttack)
        case .naive:
            return (.speed, .specialDefense)
        // 無補正
        case .hardy, .docile, .serious, .bashful, .quirky:
            return nil
        }
    }
}

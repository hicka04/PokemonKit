//
//  ActualValues.swift
//  
//
//  Created by hicka04 on 2020/10/30.
//

import Foundation

extension Pokemon {
    public struct ActualValues: Statuses {
        public let hitPoints: ActuralValue
        public var attack: ActuralValue
        public var defense: ActuralValue
        public var specialAttack: ActuralValue
        public var specialDefense: ActuralValue
        public var speed: ActuralValue
        
        init(
            baseStats: BaseInfo.BaseStats,
            individualValues: IndividualValues,
            effortValues: EffortValues,
            level: Level,
            nature: Nature
        ) { 
            self.hitPoints = .init(
                baseStat: baseStats.hitPoints, 
                individualValue: individualValues.hitPoints,
                effortValue: effortValues.hitPoints,
                level: level, 
                natureCorrectionCoefficient: nil
            )
            self.attack = .init(
                baseStat: baseStats.attack,
                individualValue: individualValues.attack,
                effortValue: effortValues.attack,
                level: level,
                natureCorrectionCoefficient: nature.correction?.direction(with: .attack)?.coefficient ?? 1.0
            )
            self.defense = .init(
                baseStat: baseStats.defense,
                individualValue: individualValues.defense,
                effortValue: effortValues.defense,
                level: level,
                natureCorrectionCoefficient: nature.correction?.direction(with: .defense)?.coefficient ?? 1.0
            )
            self.specialAttack = .init(
                baseStat: baseStats.specialAttack,
                individualValue: individualValues.specialAttack,
                effortValue: effortValues.specialAttack,
                level: level,
                natureCorrectionCoefficient: nature.correction?.direction(with: .specialAttack)?.coefficient ?? 1.0
            )
            self.specialDefense = .init(
                baseStat: baseStats.specialDefense,
                individualValue: individualValues.specialDefense,
                effortValue: effortValues.specialDefense,
                level: level,
                natureCorrectionCoefficient: nature.correction?.direction(with: .specialDefense)?.coefficient ?? 1.0
            )
            self.speed = .init(
                baseStat: baseStats.speed,
                individualValue: individualValues.speed,
                effortValue: effortValues.speed,
                level: level,
                natureCorrectionCoefficient: nature.correction?.direction(with: .speed)?.coefficient ?? 1.0
            )
        }
    }
}

extension Pokemon.ActualValues {
    public struct ActuralValue: Status {
        static let max: Int = .max
        
        public let rawValue: Int
        
        public init(rawValue: Int) {
            self.rawValue = rawValue
        }
        
        public init(
            baseStat: Pokemon.BaseInfo.BaseStats.BaseStat,
            individualValue: Pokemon.IndividualValues.IndividualValue,
            effortValue: Pokemon.EffortValues.EffortValue,
            level: Pokemon.Level,
            natureCorrectionCoefficient: Double?
        ) {
            if let natureCorrectionCoefficient = natureCorrectionCoefficient {
                // HP以外
                self.init(rawValue: ((baseStat.rawValue * 2 + individualValue.rawValue + effortValue.rawValue / 4) * level.rawValue / 100 + 5) * Int(natureCorrectionCoefficient * 10) / 10)
            } else {
                // HP
                self.init(rawValue: (baseStat.rawValue * 2 + individualValue.rawValue + effortValue.rawValue / 4) * level.rawValue / 100 + level.rawValue + 10)
            }
        }
    }
}

extension Pokemon.Nature.Correction.Direction {
    var coefficient: Double {
        switch self {
        case .upward:   return 1.1
        case .downward: return 0.9
        }
    }
}

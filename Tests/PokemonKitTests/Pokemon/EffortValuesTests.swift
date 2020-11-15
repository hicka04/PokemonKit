//
//  EffortValuesTests.swift
//  
//
//  Created by hicka04 on 2020/11/15.
//

@testable import PokemonKit
import Quick
import Nimble

class EffortValuesTests: QuickSpec {
    override func spec() {
        describe("init") {
            context("no argument") {
                it("default totalValue is 0") {
                    expect(Pokemon.EffortValues()?.totalValue) == 0
                }
            }
            
            context("all argument is 0") {
                it("totalValue is 0") {
                    let effortValues = Pokemon.EffortValues(
                        hitPoints: Pokemon.EffortValues.EffortValue(rawValue: 0)!, 
                        attack: Pokemon.EffortValues.EffortValue(rawValue: 0)!, 
                        defense: Pokemon.EffortValues.EffortValue(rawValue: 0)!,
                        specialAttack: Pokemon.EffortValues.EffortValue(rawValue: 0)!,
                        specialDefense: Pokemon.EffortValues.EffortValue(rawValue: 0)!,
                        speed: Pokemon.EffortValues.EffortValue(rawValue: 0)!
                    )
                    expect(effortValues?.totalValue) == 0
                }
            }
            
            context("argument total is 510") {
                it("totalValue is 0") {
                    let effortValues = Pokemon.EffortValues(
                        hitPoints: Pokemon.EffortValues.EffortValue(rawValue: 252)!, 
                        attack: Pokemon.EffortValues.EffortValue(rawValue: 252)!, 
                        defense: Pokemon.EffortValues.EffortValue(rawValue: 6)!,
                        specialAttack: Pokemon.EffortValues.EffortValue(rawValue: 0)!,
                        specialDefense: Pokemon.EffortValues.EffortValue(rawValue: 0)!,
                        speed: Pokemon.EffortValues.EffortValue(rawValue: 0)!
                    )
                    expect(effortValues?.totalValue) == 510
                }
            }
            
            context("argument total is 511") {
                it("totalValue is 0") {
                    let effortValues = Pokemon.EffortValues(
                        hitPoints: Pokemon.EffortValues.EffortValue(rawValue: 252)!, 
                        attack: Pokemon.EffortValues.EffortValue(rawValue: 252)!, 
                        defense: Pokemon.EffortValues.EffortValue(rawValue: 6)!,
                        specialAttack: Pokemon.EffortValues.EffortValue(rawValue: 1)!,
                        specialDefense: Pokemon.EffortValues.EffortValue(rawValue: 0)!,
                        speed: Pokemon.EffortValues.EffortValue(rawValue: 0)!
                    )
                    expect(effortValues?.totalValue).to(beNil())
                }
            }
        }
    }
    
}

class EffortValueTests: QuickSpec {
    override func spec() {
        describe("init") {
            context("no argument") {
                it("default rawValue is 0") {
                    expect(Pokemon.EffortValues.EffortValue()?.rawValue) == 0
                }
            }
            
            context("argument is -1") {
                it("return nil") {
                    expect(Pokemon.EffortValues.EffortValue(rawValue: -1)).to(beNil())
                }
            }
            
            context("argument is 0") {
                it("return not nil") {
                    expect(Pokemon.EffortValues.EffortValue(rawValue: 0)).toNot(beNil())
                }
            }
            
            context("argument is 0 to 255") {
                var argument: Int!
                beforeEach {
                    argument = .random(in: 0...255)
                }
                
                it("rawValue equal to argument") {
                    expect(Pokemon.EffortValues.EffortValue(rawValue: argument)?.rawValue) == argument
                }
            }
            
            context("argument is 255") {
                it("return not nil") {
                    expect(Pokemon.EffortValues.EffortValue(rawValue: 255)).toNot(beNil())
                }
            }
            
            context("argument is 256") {
                it("return nil") {
                    expect(Pokemon.EffortValues.EffortValue(rawValue: 256)).to(beNil())
                }
            }
        }
    }
}

//
//  LevelTests.swift
//  
//
//  Created by hicka04 on 2020/11/15.
//

@testable import PokemonKit
import Quick
import Nimble

class LevelTests: QuickSpec {
    override func spec() {
        describe("init") {
            context("argument is 0") {
                it("return nil") {
                    expect(Pokemon.Level(rawValue: 0)).to(beNil())
                }
            }
            
            context("argument is 1") {
                it("return not nil") {
                    expect(Pokemon.Level(rawValue: 1)).toNot(beNil())
                }
            }
            
            context("argument is 1 to 100") {
                var argument: Int!
                beforeEach {
                    argument = .random(in: 1...100)
                }
                
                it("rawValue equal to argument") { 
                    expect(Pokemon.Level(rawValue: argument)?.rawValue) == argument
                }
            }
            
            context("argument is 100") {
                it("return not nil") {
                    expect(Pokemon.Level(rawValue: 100)).toNot(beNil())
                }
            }
            
            context("argument is 101") {
                it("return nil") {
                    expect(Pokemon.Level(rawValue: 101)).to(beNil())
                }
            }
        }
    }
}

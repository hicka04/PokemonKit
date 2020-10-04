import XCTest
@testable import PokemonKit

final class PokemonKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(PokemonKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}

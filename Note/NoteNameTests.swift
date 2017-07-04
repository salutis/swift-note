import XCTest
@testable import Note

final class NoteNameTests: XCTestCase {}

extension NoteNameTests {
    func testAllValuesC() {
        let expectedAllValues: [NoteName] = [
            .c, .cSharp,
            .d, .dSharp,
            .e,
            .f, .fSharp,
            .g, .gSharp,
            .a, .aSharp,
            .b
        ]
        XCTAssertEqual(NoteName.allValues, expectedAllValues)
    }
}

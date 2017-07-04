import XCTest
@testable import Note

final class NoteTests: XCTestCase {}

extension NoteTests {
    func testEqual() {
        let note1 = ConcreteNote()
        let note2 = note1
        XCTAssertEqual(note1, note2)
    }

    func testNotEqualName() {
        let note1 = ConcreteNote(name: .c)
        let note2 = ConcreteNote(name: .d)
        XCTAssertNotEqual(note1, note2)
    }

    func testNotEqualOctave() {
        let note1 = ConcreteNote(octave: 1)
        let note2 = ConcreteNote(octave: 2)
        XCTAssertNotEqual(note1, note2)
    }
}

struct ConcreteNote: Note {
    let name: NoteName
    let octave: Int

    init(name: NoteName = .c, octave: Int = 1) {
        self.name = name
        self.octave = octave
    }
}

import XCTest
@testable import Note

final class NoteTests: XCTestCase {}

extension NoteTests {
    func testNameB0() {
        let note = Note(pianoKey: 3)
        XCTAssertEqual(note.name, .b)
    }

    func testNameC1() {
        let note = Note(pianoKey: 4)
        XCTAssertEqual(note.name, .c)
    }

    func testNameCSharp1() {
        let note = Note(pianoKey: 5)
        XCTAssertEqual(note.name, .cSharp)
    }

    func testNameD1() {
        let note = Note(pianoKey: 6)
        XCTAssertEqual(note.name, .d)
    }

    func testNameDSharp1() {
        let note = Note(pianoKey: 7)
        XCTAssertEqual(note.name, .dSharp)
    }

    func testNameE1() {
        let note = Note(pianoKey: 8)
        XCTAssertEqual(note.name, .e)
    }

    func testNameF1() {
        let note = Note(pianoKey: 9)
        XCTAssertEqual(note.name, .f)
    }

    func testNameFSharp1() {
        let note = Note(pianoKey: 10)
        XCTAssertEqual(note.name, .fSharp)
    }

    func testNameG1() {
        let note = Note(pianoKey: 11)
        XCTAssertEqual(note.name, .g)
    }

    func testNameGSharp1() {
        let note = Note(pianoKey: 12)
        XCTAssertEqual(note.name, .gSharp)
    }

    func testNameA1() {
        let note = Note(pianoKey: 13)
        XCTAssertEqual(note.name, .a)
    }

    func testNameASharp1() {
        let note = Note(pianoKey: 14)
        XCTAssertEqual(note.name, .aSharp)
    }

    func testNameB1() {
        let note = Note(pianoKey: 15)
        XCTAssertEqual(note.name, .b)
    }

    func testNameForC2() {
        let note = Note(pianoKey: 16)
        XCTAssertEqual(note.name, .c)
    }
}

extension NoteTests {
    func testNamePosition0() {
        let note = Note(pianoKey: 0)
        XCTAssertEqual(note.name, .gSharp)
    }

    func testNamePositionNegative1() {
        let note = Note(pianoKey: -1)
        XCTAssertEqual(note.name, .g)
    }

    func testNamePositionNegative2() {
        let note = Note(pianoKey: -2)
        XCTAssertEqual(note.name, .fSharp)
    }

    func testNamePositionNegative3() {
        let note = Note(pianoKey: -3)
        XCTAssertEqual(note.name, .f)
    }

    func testNamePositionNegative4() {
        let note = Note(pianoKey: -4)
        XCTAssertEqual(note.name, .e)
    }

    func testNamePositionNegative5() {
        let note = Note(pianoKey: -5)
        XCTAssertEqual(note.name, .dSharp)
    }

    func testNamePositionNegative6() {
        let note = Note(pianoKey: -6)
        XCTAssertEqual(note.name, .d)
    }

    func testNamePositionNegative7() {
        let note = Note(pianoKey: -7)
        XCTAssertEqual(note.name, .cSharp)
    }

    func testNamePositionNegative8() {
        let note = Note(pianoKey: -8)
        XCTAssertEqual(note.name, .c)
    }
}

extension NoteTests {
    func testOctaveNegative1Start() {
        let note = Note(pianoKey: -20)
        XCTAssertEqual(note.octave, -1)
    }

    func testOctaveNegative1End() {
        let note = Note(pianoKey: -9)
        XCTAssertEqual(note.octave, -1)
    }

    func testOctave0Start() {
        let note = Note(pianoKey: -8)
        XCTAssertEqual(note.octave, 0)
    }

    func testOctave0End() {
        let note = Note(pianoKey: 3)
        XCTAssertEqual(note.octave, 0)
    }

    func testOctave1Start() {
        let note = Note(pianoKey: 4)
        XCTAssertEqual(note.octave, 1)
    }

    func testOctave1End() {
        let note = Note(pianoKey: 15)
        XCTAssertEqual(note.octave, 1)
    }

    func testOctave2Start() {
        let note = Note(pianoKey: 16)
        XCTAssertEqual(note.octave, 2)
    }

    func testOctave2End() {
        let note = Note(pianoKey: 27)
        XCTAssertEqual(note.octave, 2)
    }
}

extension Note {
    init(name: Name, octave: Int) {
        self.name = name
        self.octave = octave
    }
}

extension Note: Equatable {
    public static func ==(lhs: Note, rhs: Note) -> Bool {
        return lhs.name == rhs.name && lhs.octave == rhs.octave
    }
}

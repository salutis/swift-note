import XCTest
@testable import Note

final class NoteFormatterTests: XCTestCase {
    func testNote1() {
        let note = ConcreteNote()
        let noteFormatter = NoteFormatter(note: note)
        XCTAssertEqual(noteFormatter.note, note)
    }

    func testNote2() {
        let note = ConcreteNote()
        let noteFormatter = NoteFormatter(note: note)
        XCTAssertEqual(noteFormatter.note, note)
    }
}

extension NoteFormatterTests {
    func testNameC() {
        let note = ConcreteNote(name: .c, octave: 0)
        let noteFormatter = NoteFormatter(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "C₀")
    }

    func testNameCSharp() {
        let note = ConcreteNote(name: .cSharp, octave: 0)
        let noteFormatter = NoteFormatter(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "C♯₀")
    }

    func testNameD() {
        let note = ConcreteNote(name: .d, octave: 0)
        let noteFormatter = NoteFormatter(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "D₀")
    }

    func testNameDSharp() {
        let note = ConcreteNote(name: .dSharp, octave: 0)
        let noteFormatter = NoteFormatter(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "D♯₀")
    }

    func testNameE() {
        let note = ConcreteNote(name: .e, octave: 0)
        let noteFormatter = NoteFormatter(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "E₀")
    }

    func testNameF() {
        let note = ConcreteNote(name: .f, octave: 0)
        let noteFormatter = NoteFormatter(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "F₀")
    }

    func testNameFSharp() {
        let note = ConcreteNote(name: .fSharp, octave: 0)
        let noteFormatter = NoteFormatter(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "F♯₀")
    }

    func testNameG() {
        let note = ConcreteNote(name: .g, octave: 0)
        let noteFormatter = NoteFormatter(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "G₀")
    }

    func testNameGSharp() {
        let note = ConcreteNote(name: .gSharp, octave: 0)
        let noteFormatter = NoteFormatter(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "G♯₀")
    }

    func testNameA() {
        let note = ConcreteNote(name: .a, octave: 0)
        let noteFormatter = NoteFormatter(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "A₀")
    }

    func testNameASharp() {
        let note = ConcreteNote(name: .aSharp, octave: 0)
        let noteFormatter = NoteFormatter(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "A♯₀")
    }

    func testNameB() {
        let note = ConcreteNote(name: .b, octave: 0)
        let noteFormatter = NoteFormatter(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "B₀")
    }
}

extension NoteFormatterTests {
    func testOctave() {
        let note = ConcreteNote(name: .c, octave: 1234567890)
        let noteFormatter = NoteFormatter(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "C₁₂₃₄₅₆₇₈₉₀")
    }
}

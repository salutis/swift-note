// Copyright © 2017 Rudolf Adamkovič LLC. All rights reserved.
// Licensed under the MIT license. Developed for Essence:
// https://itunes.apple.com/app/essence-breathing-relaxation/id768594011

import XCTest
@testable import Note

final class NoteDescriptionTests: XCTestCase {}

extension NoteDescriptionTests {
    func testNameC() {
        let note = Note(name: .c, octave: 0)
        let noteFormatter = NoteDescription(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "C₀")
    }

    func testNameCSharp() {
        let note = Note(name: .cSharp, octave: 0)
        let noteFormatter = NoteDescription(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "C♯₀")
    }

    func testNameD() {
        let note = Note(name: .d, octave: 0)
        let noteFormatter = NoteDescription(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "D₀")
    }

    func testNameDSharp() {
        let note = Note(name: .dSharp, octave: 0)
        let noteFormatter = NoteDescription(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "D♯₀")
    }

    func testNameE() {
        let note = Note(name: .e, octave: 0)
        let noteFormatter = NoteDescription(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "E₀")
    }

    func testNameF() {
        let note = Note(name: .f, octave: 0)
        let noteFormatter = NoteDescription(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "F₀")
    }

    func testNameFSharp() {
        let note = Note(name: .fSharp, octave: 0)
        let noteFormatter = NoteDescription(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "F♯₀")
    }

    func testNameG() {
        let note = Note(name: .g, octave: 0)
        let noteFormatter = NoteDescription(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "G₀")
    }

    func testNameGSharp() {
        let note = Note(name: .gSharp, octave: 0)
        let noteFormatter = NoteDescription(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "G♯₀")
    }

    func testNameA() {
        let note = Note(name: .a, octave: 0)
        let noteFormatter = NoteDescription(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "A₀")
    }

    func testNameASharp() {
        let note = Note(name: .aSharp, octave: 0)
        let noteFormatter = NoteDescription(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "A♯₀")
    }

    func testNameB() {
        let note = Note(name: .b, octave: 0)
        let noteFormatter = NoteDescription(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "B₀")
    }
}

extension NoteDescriptionTests {
    func testOctave() {
        let note = Note(name: .c, octave: 1234567890)
        let noteFormatter = NoteDescription(note: note)
        XCTAssertEqual(noteFormatter.scientificNotation, "C₁₂₃₄₅₆₇₈₉₀")
    }
}

// The MIT License (MIT)
//
// Copyright (c) 2016 Rudolf Adamkovič
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

import XCTest
@testable import Note

final class PianoKeyTests: XCTestCase {}

extension PianoKeyTests {

    func testPitchType() {
        let pianoKey = PianoKey(position: 0)
        XCTAssertTrue(pianoKey.position as Any is Int)
    }

    func testPitch() {
        let pitch = 1
        let pianoKey = PianoKey(position: pitch)
        XCTAssertEqual(pianoKey.position, pitch)
    }

}

extension PianoKeyTests {

    func testEqual() {
        let note1 = PianoKey(position: 1)
        let note2 = PianoKey(position: 1)
        XCTAssertEqual(note1, note2)
    }

    func testNotEqual() {
        let note1 = PianoKey(position: 1)
        let note2 = PianoKey(position: 2)
        XCTAssertNotEqual(note1, note2)
    }

}

extension PianoKeyTests {

    func testNameB0() {
        let pianoKey = PianoKey(position: 3)
        XCTAssertEqual(pianoKey.name, .b)
    }

    func testNameC1() {
        let pianoKey = PianoKey(position: 4)
        XCTAssertEqual(pianoKey.name, .c)
    }

    func testNameCSharp1() {
        let pianoKey = PianoKey(position: 5)
        XCTAssertEqual(pianoKey.name, .cSharp)
    }

    func testNameD1() {
        let pianoKey = PianoKey(position: 6)
        XCTAssertEqual(pianoKey.name, .d)
    }

    func testNameDSharp1() {
        let pianoKey = PianoKey(position: 7)
        XCTAssertEqual(pianoKey.name, .dSharp)
    }

    func testNameE1() {
        let pianoKey = PianoKey(position: 8)
        XCTAssertEqual(pianoKey.name, .e)
    }

    func testNameF1() {
        let pianoKey = PianoKey(position: 9)
        XCTAssertEqual(pianoKey.name, .f)
    }

    func testNameFSharp1() {
        let pianoKey = PianoKey(position: 10)
        XCTAssertEqual(pianoKey.name, .fSharp)
    }

    func testNameG1() {
        let pianoKey = PianoKey(position: 11)
        XCTAssertEqual(pianoKey.name, .g)
    }

    func testNameGSharp1() {
        let pianoKey = PianoKey(position: 12)
        XCTAssertEqual(pianoKey.name, .gSharp)
    }

    func testNameA1() {
        let pianoKey = PianoKey(position: 13)
        XCTAssertEqual(pianoKey.name, .a)
    }

    func testNameASharp1() {
        let pianoKey = PianoKey(position: 14)
        XCTAssertEqual(pianoKey.name, .aSharp)
    }

    func testNameB1() {
        let pianoKey = PianoKey(position: 15)
        XCTAssertEqual(pianoKey.name, .b)
    }

    func testNameForC2() {
        let pianoKey = PianoKey(position: 16)
        XCTAssertEqual(pianoKey.name, .c)
    }

}

extension PianoKeyTests {

    func testNamePosition0() {
        let pianoKey = PianoKey(position: 0)
        XCTAssertEqual(pianoKey.name, .gSharp)
    }

    func testNamePositionNegative1() {
        let pianoKey = PianoKey(position: -1)
        XCTAssertEqual(pianoKey.name, .g)
    }

    func testNamePositionNegative2() {
        let pianoKey = PianoKey(position: -2)
        XCTAssertEqual(pianoKey.name, .fSharp)
    }

}

extension PianoKeyTests {

    func testOctaveNegative1Start() {
        let pianoKey = PianoKey(position: -20)
        XCTAssertEqual(pianoKey.octave, -1)
    }

    func testOctaveNegative1End() {
        let pianoKey = PianoKey(position: -9)
        XCTAssertEqual(pianoKey.octave, -1)
    }

    func testOctave0Start() {
        let pianoKey = PianoKey(position: -8)
        XCTAssertEqual(pianoKey.octave, 0)
    }

    func testOctave0End() {
        let pianoKey = PianoKey(position: 3)
        XCTAssertEqual(pianoKey.octave, 0)
    }

    func testOctave1Start() {
        let pianoKey = PianoKey(position: 4)
        XCTAssertEqual(pianoKey.octave, 1)
    }

    func testOctave1End() {
        let pianoKey = PianoKey(position: 15)
        XCTAssertEqual(pianoKey.octave, 1)
    }

    func testOctave2Start() {
        let pianoKey = PianoKey(position: 16)
        XCTAssertEqual(pianoKey.octave, 2)
    }

    func testOctave2End() {
        let pianoKey = PianoKey(position: 27)
        XCTAssertEqual(pianoKey.octave, 2)
    }

}

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

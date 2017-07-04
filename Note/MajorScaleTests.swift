// Copyright © 2017 Rudolf Adamkovič LLC. All rights reserved.
// Licensed under the MIT license. Developed for Essence:
// https://itunes.apple.com/app/essence-breathing-relaxation/id768594011

import XCTest
@testable import Note

final class MajorScaleTests: XCTestCase {}

extension MajorScaleTests {
    func testNotes1() {
        let majorScale = MajorScale(pianoKey: 10)
        let expectedNotes = [
            Note(pianoKey: 10),
            Note(pianoKey: 10 + 2),
            Note(pianoKey: 10 + 2 + 2),
            Note(pianoKey: 10 + 2 + 2 + 1),
            Note(pianoKey: 10 + 2 + 2 + 1 + 2),
            Note(pianoKey: 10 + 2 + 2 + 1 + 2 + 2),
            Note(pianoKey: 10 + 2 + 2 + 1 + 2 + 2 + 2)
        ]
        XCTAssertEqual(majorScale.notes, expectedNotes)
    }

    func testNotes2() {
        let majorScale = MajorScale(pianoKey: 20)
        let expectedNotes = [
            Note(pianoKey: 20),
            Note(pianoKey: 20 + 2),
            Note(pianoKey: 20 + 2 + 2),
            Note(pianoKey: 20 + 2 + 2 + 1),
            Note(pianoKey: 20 + 2 + 2 + 1 + 2),
            Note(pianoKey: 20 + 2 + 2 + 1 + 2 + 2),
            Note(pianoKey: 20 + 2 + 2 + 1 + 2 + 2 + 2)
        ]
        XCTAssertEqual(majorScale.notes, expectedNotes)
    }
}

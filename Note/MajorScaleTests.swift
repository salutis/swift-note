import XCTest
@testable import Note

final class MajorScaleTests: XCTestCase {}

extension MajorScaleTests {
    func testTonic1() {
        let tonic = PianoKey(position: 1)
        let majorScale = MajorScale(tonic: tonic)
        XCTAssertEqual(majorScale.tonic, tonic)
    }

    func testTonic2() {
        let tonic = PianoKey(position: 2)
        let majorScale = MajorScale(tonic: tonic)
        XCTAssertEqual(majorScale.tonic, tonic)
    }
}

extension MajorScaleTests {
    func testPianoKeys1() {
        let tonicPosition = 1
        let tonic = PianoKey(position: tonicPosition)
        let majorScale = MajorScale(tonic: tonic)
        let expectedNotes = [
            PianoKey(position: tonicPosition),
            PianoKey(position: tonicPosition + 2),
            PianoKey(position: tonicPosition + 2 + 2),
            PianoKey(position: tonicPosition + 2 + 2 + 1),
            PianoKey(position: tonicPosition + 2 + 2 + 1 + 2),
            PianoKey(position: tonicPosition + 2 + 2 + 1 + 2 + 2),
            PianoKey(position: tonicPosition + 2 + 2 + 1 + 2 + 2 + 2),
        ]
        XCTAssertEqual(majorScale.pianoKeys, expectedNotes)
    }

    func testPianoKeys2() {
        let tonicPosition = 2
        let tonic = PianoKey(position: tonicPosition)
        let majorScale = MajorScale(tonic: tonic)
        let expectedNotes = [
            PianoKey(position: tonicPosition),
            PianoKey(position: tonicPosition + 2),
            PianoKey(position: tonicPosition + 2 + 2),
            PianoKey(position: tonicPosition + 2 + 2 + 1),
            PianoKey(position: tonicPosition + 2 + 2 + 1 + 2),
            PianoKey(position: tonicPosition + 2 + 2 + 1 + 2 + 2),
            PianoKey(position: tonicPosition + 2 + 2 + 1 + 2 + 2 + 2),
            ]
        XCTAssertEqual(majorScale.pianoKeys, expectedNotes)
    }
}

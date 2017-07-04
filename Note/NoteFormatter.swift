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

public struct NoteFormatter<NoteType: Note> {

    public let note: NoteType

    public init(note: NoteType) {
        self.note = note
    }

}

extension NoteFormatter {

    var scientificNotation: String {
        return note.name.letter + note.name.accidental + note.octave.subscriptDescription
    }

}

private extension NoteName {

    var letter: String {
        switch self {
        case .c, .cSharp:
            return "C"
        case .d, .dSharp:
            return "D"
        case .e:
            return "E"
        case .f, .fSharp:
            return "F"
        case .g, .gSharp:
            return "G"
        case .a, .aSharp:
            return "A"
        case .b:
            return "B"
        }
    }
    var accidental: String {
        switch self {
        case .cSharp, .dSharp, .fSharp, .gSharp, .aSharp:
            return "♯"
        default:
            return ""
        }
    }

}

private extension Int {

    var subscriptDescription: String {
        let digits = String(self).characters
        let subscriptDigits = digits.map { character -> Character in
            switch character {
            case "0": return "₀"
            case "1": return "₁"
            case "2": return "₂"
            case "3": return "₃"
            case "4": return "₄"
            case "5": return "₅"
            case "6": return "₆"
            case "7": return "₇"
            case "8": return "₈"
            case "9": return "₉"
            default: preconditionFailure()
            }
        }
        return String(subscriptDigits)
    }

}

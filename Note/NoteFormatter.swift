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

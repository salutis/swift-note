public struct Note {
    public enum Name {
        case c, cSharp
        case d, dSharp
        case e
        case f, fSharp
        case g, gSharp
        case a, aSharp
        case b
    }

    let name: Name
    let octave: Int

    public init(pianoKey: Int) {
        name = Note.name(forPianoKey: pianoKey)
        octave = Note.octave(forPianoKey: pianoKey)
    }
}

private extension Note {
    static func name(forPianoKey pianoKey: Int) -> Name {
        let offset = pianoKey - pianoKeyOffset
        let ifPositive = offset % nameCount
        let ifNegative = ifPositive == 0 ? 0 : nameCount + ifPositive
        let nameIndex = offset >= 0 ? ifPositive : ifNegative
        return Name.allValues[nameIndex]
    }

    static func octave(forPianoKey pianoKey: Int) -> Int {
        let offset = pianoKey - pianoKeyOffset
        let ifPositive = offset / nameCount + 1
        let ifNegative = (offset + 1) / nameCount
        return offset >= 0 ? ifPositive : ifNegative
    }

    static let pianoKeyOffset = 4
    static let nameCount = Name.allValues.count
}

extension Note: Equatable {
    public static func ==(lhs: Note, rhs: Note) -> Bool {
        return lhs.name == rhs.name && lhs.octave == rhs.octave
    }
}

extension Note.Name {
    public static var allValues: [Note.Name] {
        return [
            .c, .cSharp,
            .d, .dSharp,
            .e,
            .f, .fSharp,
            .g, .gSharp,
            .a, .aSharp,
            .b
        ]
    }
}

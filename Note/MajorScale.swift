public struct MajorScale {
    public let notes: [Note]

    public init(pianoKey: Int) {
        let positions = [
            pianoKey,
            pianoKey + 2,
            pianoKey + 2 + 2,
            pianoKey + 2 + 2 + 1,
            pianoKey + 2 + 2 + 1 + 2,
            pianoKey + 2 + 2 + 1 + 2 + 2,
            pianoKey + 2 + 2 + 1 + 2 + 2 + 2
        ]
        notes = positions.map(Note.init)
    }
}

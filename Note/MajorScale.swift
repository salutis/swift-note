public struct MajorScale {
    public let tonic: PianoKey

    public init(tonic: PianoKey) {
        self.tonic = tonic
    }
}

extension MajorScale {
    public var pianoKeys: [PianoKey] {
        let positions = [
            tonic.position,
            tonic.position + 2,
            tonic.position + 2 + 2,
            tonic.position + 2 + 2 + 1,
            tonic.position + 2 + 2 + 1 + 2,
            tonic.position + 2 + 2 + 1 + 2 + 2,
            tonic.position + 2 + 2 + 1 + 2 + 2 + 2,
        ]
        return positions.map(PianoKey.init)
    }
}

public struct PianoKey {

    public let position: Int

    public init(position: Int) {
        self.position = position
    }

}

extension PianoKey: Equatable {

    public static func ==(lhs: PianoKey, rhs: PianoKey) -> Bool {
        return lhs.position == rhs.position
    }

}

extension PianoKey: Note {

    public var name: NoteName {
        return NoteName.allValues[nameIndex]
    }

    public var octave: Int {
        return normalizedPosition >= 0
            ? octaveForPositiveNormalizedPosition
            : octaveForNegativeNormalizedPosition
    }

}

private extension PianoKey {

    var nameIndex: Int {
        return normalizedPosition >= 0
            ? nameIndexForPositiveNormalizedPosition
            : nameIndexForNegativeNormalizedPosition
    }

    var nameIndexForPositiveNormalizedPosition: Int {
        return normalizedPosition % NoteName.allValues.count
    }

    var nameIndexForNegativeNormalizedPosition: Int {
        return NoteName.allValues.count - (-normalizedPosition % NoteName.allValues.count)
    }

}

private extension PianoKey {

    var octaveForPositiveNormalizedPosition: Int {
        return normalizedPosition / NoteName.allValues.count + 1
    }

    var octaveForNegativeNormalizedPosition: Int {
        return (normalizedPosition + 1) / NoteName.allValues.count
    }

}

private extension PianoKey {

    var normalizedPosition: Int {
        return position - 4
    }
    
}

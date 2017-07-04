public protocol Note: Equatable {

    var name: NoteName { get }
    var octave: Int { get }

}

public extension Note {

    static func ==(lhs: Self, rhs: Self) -> Bool {
        return lhs.name == rhs.name && lhs.octave == rhs.octave
    }

}

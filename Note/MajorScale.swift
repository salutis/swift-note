// Copyright © 2017 Rudolf Adamkovič LLC. All rights reserved.
// Licensed under the MIT license. Developed for Essence:
// https://itunes.apple.com/app/essence-breathing-relaxation/id768594011

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

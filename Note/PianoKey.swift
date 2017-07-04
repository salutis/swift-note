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

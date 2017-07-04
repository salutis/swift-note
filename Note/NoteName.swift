public enum NoteName {
    case c, cSharp
    case d, dSharp
    case e
    case f, fSharp
    case g, gSharp
    case a, aSharp
    case b
}

public extension NoteName {
    public static var allValues: [NoteName] {
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

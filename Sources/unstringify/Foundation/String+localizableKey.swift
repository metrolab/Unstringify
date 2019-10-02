import Foundation

extension String {
    var localizableKey: String? {
        // "x" = "y"; -> "x -> x
        return components(separatedBy: "\" = \"").first?.removingCharacter(at: 0)
    }
}

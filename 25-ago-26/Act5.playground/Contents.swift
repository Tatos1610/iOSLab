import UIKit

let miEmoji = "😀"


if let scalar = miEmoji.unicodeScalars.first { print("U+\(String(scalar.value, radix: 16).uppercased())") }

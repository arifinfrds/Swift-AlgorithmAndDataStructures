import UIKit

let input = "arifin"

// Complexity: O(1)

class Program {
    func reverse(string: String) -> String {
        return String(input.reversed())
    }
}

print(Program().reverse(string: input))


class Program2 {
    func reverse(string: String) -> String {
        var tempChars: [Character] = []
        
        for i in (0..<string.count).reversed() {
            let chars = Array(string)
            tempChars.append(chars[i])
        }
        return String(tempChars)
    }
}

print(Program2().reverse(string: input))


class Program3 {
    func reverse(string: String) -> String {
        var tempChars = ""
        
        for i in (0..<string.count).reversed() {
            let chars = Array(string)
            tempChars.append(chars[i])
        }
        
        return tempChars
    }
}

print(Program3().reverse(string: input))

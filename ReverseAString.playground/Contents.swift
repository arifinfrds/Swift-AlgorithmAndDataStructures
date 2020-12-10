import UIKit

let input = "arifin"


// Complexity: O(1)

class Program {
    func reverse(string: String) -> String {
        return String(input.reversed())
    }
}

print(Program().reverse(string: input))


// Time: O(n) | Space: O(n)

class Program2 {
    func reverse(string: String) -> String {
        var tempChars: [Character] = []
        let chars = Array(string)
        
        for i in (0..<string.count).reversed() {
            tempChars.append(chars[i])
        }
        return String(tempChars)
    }
}

print(Program2().reverse(string: input))


// Time: O(n) | Space: O(n)

class Program3 {
    func reverse(string: String) -> String {
        var tempChars = ""
        let chars = Array(string)
        
        for i in (0..<string.count).reversed() {
            tempChars.append(chars[i])
        }
        
        return tempChars
    }
}

print(Program3().reverse(string: input))

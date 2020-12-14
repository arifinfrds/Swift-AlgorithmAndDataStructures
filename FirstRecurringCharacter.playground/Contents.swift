import UIKit

// https://www.udemy.com/course/master-the-coding-interview-data-structures-algorithms/learn/lecture/12314712#overview

let array = [2, 5, 1, 2, 3, 5, 1, 2, 4]
// should return 2

let array2 = [2, 1, 1, 2, 3, 5, 1, 2, 4]
// should return 1

let array3 = [2, 3, 4, 5]
// should return nil

// Time O(n) | Space O(n)

class Program {
    func firstRecurringCharacter(_ numbers: [Int]) -> Int? {
        var hashTable: [Int: Bool] = [:]
        
        for number in numbers {
            if let _ = hashTable[number] {
                return number
            } else {
                hashTable[number] = false
            }
        }
        return nil
    }
}

print(Program().firstRecurringCharacter(array))
print(Program().firstRecurringCharacter(array2))
print(Program().firstRecurringCharacter(array3))

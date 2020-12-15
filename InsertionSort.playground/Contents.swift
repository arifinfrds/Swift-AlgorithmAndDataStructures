import UIKit

class Program {
    func insertionSort(_ array: [Int]) -> [Int] {
        var numbers = array
        
        for i in 1..<numbers.count {
            var j = i
            while  j > 0 && numbers[j-1] > numbers[j] {
                numbers.swapAt(j, j-1)
                j -= 1
            }
        }
        return numbers
    }
}
let numbers = [5, 4, 3, 2, 1, 6]

print(Program().insertionSort(numbers))

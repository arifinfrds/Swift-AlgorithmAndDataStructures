import UIKit

let numbers = [5, 4, 3, 2, 1, 6]

// Worst: O(n^2)
// ascending
func sortWithBubbleSort(_ numbers: [Int]) -> [Int] {
    if numbers.isEmpty {
        return []
    }
    
    var processedNumbers = numbers
    for _ in 0..<processedNumbers.count {
        for j in 0..<processedNumbers.count - 1 {
            if processedNumbers[j] > processedNumbers[j+1] {
                let temp = processedNumbers[j]
                processedNumbers[j] = processedNumbers[j+1]
                processedNumbers[j+1] = temp
            }
        }
    }
    return processedNumbers
}

let sortedNumbers = sortWithBubbleSort(numbers)
print(sortedNumbers)

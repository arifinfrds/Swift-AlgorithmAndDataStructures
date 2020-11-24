import UIKit

let numbers = [6, 1, 9, 5, 13, 6, 99, 19, 58, 0]

// Worst: O(n^2)
// ascending
func selectionSort(_ numbers: [Int]) -> [Int] {
    var minIndex = 0
    var processedNumbers = numbers
    
    for i in 0..<processedNumbers.count {
        minIndex = i
        for j in (i+1)..<processedNumbers.count {
            if processedNumbers[minIndex] > processedNumbers[j] {
                minIndex = j
            }
            let temp = processedNumbers[i]
            processedNumbers[i] = processedNumbers[minIndex]
            processedNumbers[minIndex] = temp
            
            // or
            // processedNumbers.swapAt(i, minIndex)
        }
    }
    
    return processedNumbers
}



print(selectionSort(numbers))

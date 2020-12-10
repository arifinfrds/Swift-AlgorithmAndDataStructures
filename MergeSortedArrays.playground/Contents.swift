import UIKit

// https://www.udemy.com/course/master-the-coding-interview-data-structures-algorithms/learn/lecture/12309366#notes

let array1 = [0, 3, 4, 31]
let array2 = [4, 6, 30]

class Program {
    func mergeSortedArrays(_ array1: [Int], _ array2: [Int]) -> [Int] {
        let mergedArray = array1 + array2
        return mergedArray.sorted()
    }
}

print(Program().mergeSortedArrays(array1, array2))

// MARK: - Complexity: O(n)
class Program2 {
    func mergeSortedArrays(_ array1: [Int], _ array2: [Int]) -> [Int] {
        if array1.isEmpty {
            return array2
        }
        if array2.isEmpty {
            return array1
        }
        
        var mergedArray: [Int] = []
        var firstArrayItemPointerIndex = 0
        var secondArrayItemPointerIndex = 0
        
        while secondArrayItemPointerIndex < array2.count && firstArrayItemPointerIndex < array1.count {
            let number2 = array2[secondArrayItemPointerIndex]
            let number1 = array1[firstArrayItemPointerIndex]

            if number1 < number2 {
                mergedArray.append(number1)
                firstArrayItemPointerIndex += 1
            } else {
                mergedArray.append(number2)
                secondArrayItemPointerIndex += 1
            }
            
            if secondArrayItemPointerIndex >= array2.count {
                let lastIndex = array1.count - 1
                mergedArray.append(array1[lastIndex])
            }
            if firstArrayItemPointerIndex >= array1.count {
                let lastIndex = array2.count - 1
                mergedArray.append(array2[lastIndex])
            }
            
        }
        return mergedArray
    }
}

print(Program2().mergeSortedArrays(array1, array2))

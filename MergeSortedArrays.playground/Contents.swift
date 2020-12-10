import UIKit

let array1 = [0, 3, 4, 31]
let array2 = [4, 6, 30]

class Program {
    func mergeSortedArrays(_ array1: [Int], _ array2: [Int]) -> [Int] {
        let mergedArray = array1 + array2
        return mergedArray.sorted()
    }
}

print(Program().mergeSortedArrays(array1, array2))

import UIKit

// https://leetcode.com/problems/contains-duplicate/submissions/
// input : [1,2,3,1]
// output : true

// Time: O(n) | Space: O(n)
// Leetcode - Time Limit Exceeded

class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var hashTable: [Int: Int] = [:]
        
        for (index, number) in nums.enumerated() {
            if hashTable.values.contains(number) {
                return true
            }
            hashTable[index] = number
        }
        return false
    }
}

print(Solution().containsDuplicate([1,2,3,1]))
print(Solution().containsDuplicate([3,3]))


class Solution2 {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        let sortedNumbers = nums.sorted()
        for i in stride(from: 0, to: sortedNumbers.count, by: 1) {
            if sortedNumbers[i] == sortedNumbers[i+1] {
                return true
            }
        }
        return false
    }
}

print(Solution2().containsDuplicate([1,2,3,1]))
print(Solution2().containsDuplicate([3,3]))

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

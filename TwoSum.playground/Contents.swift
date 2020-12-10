import UIKit

// https://www.udemy.com/course/master-the-coding-interview-data-structures-algorithms/learn/lecture/12310382#notes
// https://leetcode.com/problems/two-sum/description/

/*
 Input: nums = [2,7,11,15], target = 9
 Output: [0,1]
 Output: Because nums[0] + nums[1] == 9, we return [0, 1].
 */

// Time: O(n^2) | Space: O(1)

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        for i in 0..<nums.count {
            for j in (i+1)..<nums.count {
                if nums[i] + nums[j] == target {
                    return[i, j]
                }
            }
        }
        return []
    }
}

//print(Solution().twoSum([2,7,11,15], 9))
//print(Solution().twoSum([3,2,4], 6))
//print(Solution().twoSum([3,3], 6))


// Time: O(n) | Space: O(n)

class Solution2 {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var hashTable: [Int: Int] = [:]
        
        for (index, number) in numbers.enumerated() {
            let complementNumber = target - number
            if let complementIndex = hashTable[complementNumber] {
                return [index, complementIndex]
            } else {
                hashTable[number] = index
            }
        }
        return []
    }
}

print(Solution2().twoSum([2,7,11,15], 9))
print(Solution2().twoSum([3,2,4], 6))
print(Solution2().twoSum([3,3], 6))

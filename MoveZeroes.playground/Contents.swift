import UIKit

// https://leetcode.com/problems/move-zeroes/description/
// https://www.udemy.com/course/master-the-coding-interview-data-structures-algorithms/learn/lecture/12310382#notes


// Input: [0,1,0,3,12]
// Output: [1,3,12,0,0]

// Time: O(n^2)
class Solution {
    func moveZeroes(_ nums: [Int]) -> [Int] {
        var numbers = nums
        
        for _ in 0..<numbers.count {
            for j in 0..<numbers.count - 1 {
                if numbers[j] == 0 {
                    let temp = numbers[j]
                    numbers[j] = numbers[j+1]
                    numbers[j+1] = temp
                }
            }
        }
        return numbers
    }
}

print(Solution().moveZeroes([0,1,0,3,12]))

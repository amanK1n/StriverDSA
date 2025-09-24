// All Permutation
import Foundation

func permute<T>(_ nums: [T]) -> [[T]] {
    var result: [[T]] = []
    var nums = nums
    
    func backtrack(_ start: Int) {
        if start == nums.count {
            result.append(nums)
            return
        }
        
        for i in start..<nums.count {
            nums.swapAt(start, i)       // swap
            backtrack(start + 1)        // recurse
            nums.swapAt(start, i)       // backtrack (undo swap)
        }
    }
    
    backtrack(0)
    return result
}

// Example:
let array = [1, 2, 3]
let permutations = permute(array)
print(permutations)

// Next Permutation

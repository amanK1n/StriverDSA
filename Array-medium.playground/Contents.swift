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
print("Ex-1: ", permutations)

// Next Permutation
var nums = [2,1,5,4,3,0,0]
var index = -1
       let n = nums.count
       for i in stride(from: n-2, through: 0, by: -1) {
           if nums[i] < nums[i + 1] {
               index = i
             //  print("Dip::", nums[index])
               break
           }
       }
       if index == -1 {
           nums = nums.reversed()
       } else {
       for i in stride(from: n-1, to: index, by: -1) {
           if nums[i] > nums[index] {
               //print("Num to be swapped:: ", nums[i])
               nums.swapAt(i, index)
              // print("After Swap: ", nums)
               break
           }
       }
       nums[(index + 1)...].reverse()
       }
print("Ex-2: ", nums)

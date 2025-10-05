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
print("Ex-1: All permutations: ", permutations)

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
print("Ex-2: Next permutation: ", nums)

// Leaders in array
var arr = [1, 2, 3, 2]
var maxi = Int.min
var leaders: [Int] = []
for i in stride(from: arr.count - 1, through: 0, by: -1) {
    if arr[i] > maxi {
        leaders.append(arr[i])
        maxi = arr[i]
    }
}
print("Ex-3: Leaders: ", leaders)

// Longest Consecutive
var arr1 = [1,0,1,2]
if nums.isEmpty { print("0") }
     var longest = 1
     var lastSmallest = Int.min
     var currCount = 1
    let numArr = Array(arr1).sorted()
     for i in stride(from: 0, to: numArr.count, by: +1) {
       
       if ((numArr[i] - 1) == lastSmallest) {
           currCount += 1
           lastSmallest = numArr[i]
       } else if ((numArr[i]) != lastSmallest) {
           currCount = 1
           lastSmallest = numArr[i]
       }
       longest = max(longest, currCount)

     }
     print("Ex-4: Longest Consecutive: ", longest)

// Set Matrix Zero
var matrix = [[1,1,1],[1,0,1],[1,1,1]]

func setZeroes(_ matrix: inout [[Int]]) {
        for i in stride(from: 0, to: matrix.count, by: +1) {
            for j in stride(from: 0, to: matrix.first!.count, by: +1) {
               if matrix[i][j] == 0 {
                markRow(i: i)
                markCol(j: j)
               }
            }
        }
        func markRow(i: Int) {
        for j in stride(from: 0, to: matrix.first!.count, by: +1) {
            if matrix[i][j] != 0 {
                matrix[i][j] = -1010
            }
          }
        }
        func markCol(j: Int) {
        for i in stride(from: 0, to: matrix.count, by: +1) {
            if matrix[i][j] != 0 {
                matrix[i][j] = -1010
            }
          }
        }
        for i in stride(from: 0, to: matrix.count, by: +1) {
            for j in stride(from: 0, to: matrix.first!.count, by: +1) {
               if matrix[i][j] == -1010 {
                matrix[i][j] = 0
               }
            }
        }
        
    }
setZeroes(&matrix)
print("Ex-5.1: Set Matrix ZERO: Brute:", matrix)

// Set matrix zero: Better approach
var matrix1 = [[1,1,1],[1,0,1],[1,1,1]]
func setZeroesBetter(_ matrix: inout [[Int]]) {
     var rowArr = Array(repeating: 0, count: matrix.count)
     var colArr = Array(repeating: 0, count: matrix.first!.count)
     for i in stride(from: 0, to: matrix.count, by: +1) {
        for j in stride(from: 0, to: matrix.first!.count, by: +1) {
            if matrix[i][j] == 0 {
                rowArr[i] = 1
                colArr[j] = 1
            }
        }
     }
     for i in stride(from: 0, to: matrix.count, by: +1) {
        for j in stride(from: 0, to: matrix.first!.count, by: +1) {
            if rowArr[i] == 1 || colArr[j] == 1 {
                matrix[i][j] = 0
            }
        }
    }
}
setZeroesBetter(&matrix1)
print("Ex-5.2: Set Matrix ZERO: Better:", matrix1)

// Rotate Matrix by 90: Brute
var matrix3 = [[1,2,3],[4,5,6],[7,8,9]]
func rotate(_ matrix: inout [[Int]]) {
      var newMatrix: [[Int]] = matrix
      let n = matrix.count
      for i in 0..<matrix.count {
        for j in 0..<matrix.count {
            newMatrix[j][n - 1 - i] = matrix[i][j]
        }
      }
      matrix = []
      matrix = newMatrix
}
rotate(&matrix3)
print("Ex-6.1: Rotate Matrix: Brute:", matrix3)
// Rotate Matrix by 90: Optimal
var matrix4 = [[1,2,3],[4,5,6],[7,8,9]]
func rotateOptimal(_ matrix: inout [[Int]]) {
    
    // Transpose
    for i in 0..<matrix.count - 1 {
        for j in (i + 1)..<matrix.count {
            (matrix[i][j], matrix[j][i]) = (matrix[j][i], matrix[i][j])
        }
    }
    // Reverse
    for i in 0..<matrix.count {
        matrix[i].reverse()
    }
}
rotateOptimal(&matrix4)
print( "Ex-6.2: Rotate Matrix: Optimal:", matrix4)

// Traverse in Spiral order
var m = [[1,2,3],[4,5,6],[7,8,9]]
func spiralOrder(_ matrix: [[Int]]) -> [Int] {
        // right -> bottom -> left -> top
       
        var resArr: [Int] = []
         guard !matrix.isEmpty else { return resArr }
        var top = 0
        var bottom = matrix.count - 1
        var left = 0
        var right = matrix[0].count - 1
        while (top <= bottom && left <= right) {
        // Move right

        for j in left...right {
            resArr.append(matrix[top][j])
        }
        top += 1
        // Move to bottom
        if top <= bottom {
        for i in top...bottom {
            resArr.append(matrix[i][right])
        }
        right -= 1
        }
        // move left
        if top <= bottom {
        for j in stride(from: right, through: left, by: -1) {
            resArr.append(matrix[bottom][j])
        }
        bottom -= 1
        }
        // move top
        if left <= right {
        for i in stride(from: bottom, through: top, by: -1) {
            resArr.append(matrix[i][left])
        }
        left += 1
        }
      
      }


       return resArr
    }
print("Ex-7: Traverse Matrix spiral order: ", spiralOrder(m))

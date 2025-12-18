let nums1 = [1, 2, 3, 4, 5]
let nums2 = [1, 2, 7]
var i = 0
var j = 0
var result: [Int] = []

while i < nums1.count && i < nums2.count {
    if nums1[i] < nums2[i] {
        result[i] = nums1[i]
        i += 1
    }
}
print(result)

var arr = [1,2,3,4,5]
// [3,4,5,1,2]
var k: Int = 7
var shift = k % arr.count
var saveArr: [Int] = []
for i in stride(from: 0, to: shift, by: 1) {
    saveArr.append(arr[i])
}
print("savedArr:: ", saveArr)
var jN = 0
while shift < arr.count {
    arr[jN] = arr[shift]
    jN += 1
    shift += 1
}


var y = 0
for i in stride(from: j, to: arr.count, by: 1) {
    arr[i] = saveArr[y]
    y += 1
}
print("Left Shift:: ", arr)

// * Pattern 4 x 4
for _ in 0..<4 {
    for _ in 0..<4 {
        print("*", terminator: " ")
    }
    print()
}
print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")

// * right triangle
for i in 0..<4 {
    for _ in 0..<(i + 1) {
        print("*", terminator: " ")
    }
    print()
}
print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")

// Print nums
for i in 0..<5 {
    for j in 0..<(i + 1) {
        print((j + 1), terminator: " ")
    }
    print()
}
print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")

// Print nums
for i in 0..<5 {
    for j in 0..<(i + 1) {
        print((i + 1), terminator: " ")
    }
    print()
}
print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")

// Print inverted *
for i in 0..<5 {
    for j in stride(from: (5 - i), to: 0, by: -1) {
        print("*", terminator: " ")
    }
    print()
}
print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")

// Print inverted nums
for i in 0..<5 {
    for j in stride(from: 1, through: (5 - i), by: +1) {
        print(j, terminator: " ")
    }
    print()
}

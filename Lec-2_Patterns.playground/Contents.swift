// * Pattern 4 x 4
for _ in 0..<4 {
    for _ in 0..<4 {
        print("*", terminator: " ")
    }
    print()
}
print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++1")

// * right triangle
for i in 0..<4 {
    for _ in 0..<(i + 1) {
        print("*", terminator: " ")
    }
    print()
}
print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++2")

// Print nums
for i in 0..<5 {
    for j in 0..<(i + 1) {
        print((j + 1), terminator: " ")
    }
    print()
}
print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++3")

// Print nums
for i in 0..<5 {
    for j in 0..<(i + 1) {
        print((i + 1), terminator: " ")
    }
    print()
}
print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++4")

// Print inverted *
for i in 0..<5 {
    for j in stride(from: (5 - i), to: 0, by: -1) {
        print("*", terminator: " ")
    }
    print()
}
print("+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++5")

// Print inverted nums
for i in 0..<5 {
    for j in stride(from: 1, through: (5 - i), by: +1) {
        print(j, terminator: " ")
    }
    print()
}

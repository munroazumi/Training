//
//  Training1.swift
//  
//
//  Created by Munro Azumi on 9/7/21.
//

import Foundation

import UIKit

let array: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
let count = array.count

for i in stride(from: count, to: 0, by: -1) {
    //print(i)
}

for i in stride(from: 0, to: count, by: 1) {
    if i % 2 > 0 {
        print(array[i - 1])
    }
}

func isPrime(_ number: Int) -> Bool {
    var result = true
    for i in 2 ..< number {
        if number % i == 0 {
            result = false
        }
    }
    return result
}



func factorial(_ fact: Int) -> Int {
    if fact == 0 {
        return 1
    } else {
        return fact * factorial(fact - 1)
    }
}

let tryFact = factorial(7)
print(tryFact)


let arrayToSplit: [Int] = [1, 2, 3, 4, 5, 6, 7]
let groupSize = 2

let arraysOfTwo = stride(from: 0, to: arrayToSplit.count, by: groupSize).map {
    Array(arrayToSplit[$0 ..< groupSize])
}

print(arraysOfTwo)

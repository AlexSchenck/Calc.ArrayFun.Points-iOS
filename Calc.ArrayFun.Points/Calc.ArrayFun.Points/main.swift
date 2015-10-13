//
//  main.swift
//  Calc.ArrayFun.Points
//
//  Created by iGuest on 10/12/15.
//  Copyright (c) 2015 Alex Schenck. All rights reserved.
//

import Foundation

// Build a Calculator

// Adds second given double to first given double
let add : (Double, Double) -> Double =
{
    return $0 + $1
}

// Subtracts second given double from first given double
let subtract : (Double, Double) -> Double =
{
    return $0 - $1
}

// Multiplies first given double by second given double
let multiply : (Double, Double) -> Double =
{
    return $0 * $1
}

// Divides first given double by second given double
let divide : (Double, Double) -> Double =
{
    return $0 / $1
}

// Completes given math operation with given Ints
func mathOperation(operation : (Double, Double) -> Double, num1 : Int, num2: Int) -> Double
{
    return operation(Double(num1), Double(num2));
}

// Test cases
println(mathOperation(add, 23, 41))
println(mathOperation(subtract, 58, 19))
println(mathOperation(multiply, 3, 9))
println(mathOperation(divide, 70, 4))

// Array Fun

// Adds all given Ints together
let addArray = { (numbers: [Int]) -> Int in
    var result = 0
    
    for var index = 0; index < numbers.count; index++
    {
        result += numbers[index]
    }
    
    return result
}

// Multipies all given Ints together
let multiplyArray = { (numbers: [Int]) -> Int in
    var result = 0
    
    for var index = 0; index < numbers.count; index++
    {
        if (index == 0)
        {
            result = numbers[index]
        }
        else
        {
            result *= numbers[index]
        }
    }
    
    return result
}

// Counts given number of Ints
let countArray = { (numbers: [Int]) -> Int in
    return numbers.count
}

// Finds average of given Ints
let averageArray = { (numbers: [Int]) -> Int in
    return addArray(numbers) / numbers.count
}

// Completes given math (array) operation with given Int array
func mathOperationArray(operation : ([Int]) -> Int, numbers : [Int]) -> Int
{
    return operation(numbers)
}

// Test cases
println(mathOperationArray(addArray, [1, 2, 3, 4, 5]))
println(mathOperationArray(multiplyArray, [2, 4, 6]))
println(mathOperationArray(countArray, [1000, 1000, 1000, 1000, 1000]))
println(mathOperationArray(averageArray, [1, 10, 100, 1000]))

// Points

// Adds given points together
func addPoints(point1 : (x : Double?, y : Double?), point2 : (x : Double?, y : Double?)) -> (Double, Double)
{
    var resultx : Double = 0
    var resulty : Double = 0
    
    if (point1.x != nil)
    {
        resultx += point1.x!
    }
    
    if (point2.x != nil)
    {
        resultx += point2.x!
    }
    
    if (point1.y != nil)
    {
        resulty += point1.y!
    }
    
    if (point2.y != nil)
    {
        resulty += point2.y!
    }
    
    return (resultx, resulty)
}

// Subtracts given points from each other
func subtractPoints(point1 : (x : Double?, y : Double?), point2 : (x : Double?, y : Double?)) -> (Double, Double)
{
    var resultx : Double = 0
    var resulty : Double = 0
    
    if (point1.x != nil)
    {
        resultx -= point1.x!
    }
    
    if (point2.x != nil)
    {
        resultx -= point2.x!
    }
    
    if (point1.y != nil)
    {
        resulty -= point1.y!
    }
    
    if (point2.y != nil)
    {
        resulty -= point2.y!
    }
    
    return (resultx, resulty)
}

// Test cases
println(addPoints((2, 4), (3, 5)))
println(subtractPoints((1.5, 3.5), (3.5, 5.5)))
println(addPoints((5, 10), (nil, 3)))

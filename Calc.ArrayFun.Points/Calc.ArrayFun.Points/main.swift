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

println(mathOperation(add, 23, 41))
println(mathOperation(subtract, 58, 19))
println(mathOperation(multiply, 3, 9))
println(mathOperation(divide, 70, 4))

// Array Fun

// Points


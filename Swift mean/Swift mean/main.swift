//
//  main.swift
//  Swift SD
//
//  Created by Sylwester Tylec on 14/06/2022.
//

import Foundation
import Darwin
import CoreFoundation
let tablica: [Double]
tablica=[1,2,3,4,5,6,7,8,9,10]
var n=9
var g:Double
g=10
var i: Int
func meanA(arr: [Double])->Double{
    
    let start = CFAbsoluteTimeGetCurrent()
    var suma, mean: Double
    mean=0
    suma=0
    for i in 0...n{
        suma+=arr[i]
    }
    mean=suma/g
    let diff = CFAbsoluteTimeGetCurrent() - start
    print("MeanA Took \(diff) seconds")
    return mean
}
func meanG(arr: [Double])->Double{
    let start2 = CFAbsoluteTimeGetCurrent()
    var iloczyn, meanG: Double
    meanG=0
    iloczyn=1
    for i in 0...n{
        iloczyn*=arr[i]
    }
    meanG=pow(iloczyn, (1/g))
    let diff2 = CFAbsoluteTimeGetCurrent() - start2
    print("MeanG Took \(diff2) seconds")
    return meanG
}
func meanH(arr: [Double])->Double{
    let start3 = CFAbsoluteTimeGetCurrent()
    var suma, meanH: Double
    meanH=0
    suma=0
    for i in 0...n{
        suma+=1/arr[i]
    }
    meanH=g/suma
    let diff3 = CFAbsoluteTimeGetCurrent() - start3
    print("MeanH Took \(diff3) seconds")
    return meanH
}
print(meanA(arr: tablica))
print(meanG(arr: tablica))
print(meanH(arr: tablica))

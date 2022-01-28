import UIKit

//Euler Multiples of 3 or 5

var sum = 0

for i in 1...999 {
    if i % 3 == 0 || i % 5 == 0 {
    sum = sum+i
    }
}
print("Multiples of 3 or 5 Score: ",sum)

//Euler Even Fibonacci numbers

var a = 1
var b = 1
var total = 0
while a <= 3999999 {
    if a % 2 == 0 {
        total += a
    }
    (a,b) = (b,a+b)
}
print("Even Fibonacci Numbers Score: ",total)

// Euler Largest prime factor

var number = 600851475143
func largest (givenNum : Int) -> Int {

    var numToFactor = givenNum
    var primeFactor = 2

    while numToFactor > 1 {
        if (numToFactor % primeFactor == 0) {
            numToFactor /= primeFactor
        }
        else {
            primeFactor += 1
        }
    }
    return primeFactor
}
print(largest(givenNum: 600851475143))

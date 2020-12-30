import UIKit

import Foundation

// уравнение
var a = 2
var b = 3
var c = -5

if (a != 0) {
    if (b != 0) && (c != 0){
        let d = (b*b-4*a*c)
        if (d<0) {
            print("Корней нет")
        } else if (d == 0) {
            let x = (-b)/2*a
            print("корень: \(x)")
        } else if (d>0) {
            let x1: Double = ((Double(-b))+sqrt(Double(d)))/2*Double(a)
            let x2: Double = ((Double(-b))-sqrt(Double(d)))/2*Double(a)
            print("Первый корень: \(x1), Второй корень: \(x2)")
        }
    } else if (c == 0) {
        let x1 = 0
        let x2 = (-b)/a
        print(x1,x2)
    } else if (b == 0) && ((a>0)&&(c<0) || (a<0)&&(c>0)) {
        let x = sqrt(Double(Double(-c)/Double(a)))
        print ("Первый корень: +\(x), Второй корень: -\(x)")
    }
} else { print ("Ошибка ввода. Это не квадратное уравнение если a=0!") }

// H; S; P; Треуголика
var leg1:Double = 3
var leg2:Double = 5

let hypotenuse:Double = leg1*leg1 + leg2*leg2
let s:Double = (leg1*leg2)/2
let p:Double = leg1+leg2+hypotenuse
print ("Гипотенуза: \(hypotenuse)")
print ("Площадь: \(s)")
print ("Периметр: \(p)")


// Вклад на 5 лет
var count: Double = 10000
var percent: Double = 12.5
var i = 1

while i<6 {
    i += 1
    count = count + (count*percent)/100
}

print ("Результат через 5 лет вклада: \(round(count))")

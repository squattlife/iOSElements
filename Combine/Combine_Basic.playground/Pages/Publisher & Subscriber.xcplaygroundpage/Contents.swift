//: [Previous](@previous)

import Foundation
import Combine

// Publisher & Subscriber
let data = Just("Hello") // publisher
let subscription1 = data.sink { value in
    print("Received Value: \(value)")
}


let arrayPublisher = [1, 3, 5, 7, 9].publisher // 여러 데이터 
let subscription2 = arrayPublisher.sink { value in
    print("Received Value: \(value)")
}

class MyClass {
    var property: Int = 0 {
        didSet {
            print("Did set property to \(property)")
        }
    }
}

let object = MyClass()
let subscription3 = arrayPublisher.assign(to: \.property, on: object)
print("Final Value: \(object.property)")
object.property = 3



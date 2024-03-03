import UIKit
import Foundation

/*
 Required Initializer (필수 초기화자)
 - '서브클래스'에서 반드시 구현되어야 하는 초기화 메서드
 - '상속 관계'에서 슈퍼클래스에 구현된 initializer를 '자식클래스'가 반드시 구현하도록 강제함
 */

class Person {
    var age: Int
    var height: Double
    
    func display() {
        print("나이 = \(age), 키 = \(height)")
    }
    
    required init(age: Int, height: Double) {
        self.age = age
        self.height = height
    }
}

class Hobby: Person {
    var exerciseTime: Int
    
    init(exerciseTime: Int) {
        self.exerciseTime = exerciseTime
        super.init(age: 24, height: 190)
    }
    
    required init(age: Int, height: Double) {
        self.exerciseTime = 2
        super.init(age: age, height: height)
    }
}

var bbungbbeng = Hobby(exerciseTime: 2)
bbungbbeng.display()
print("운동시간: \(bbungbbeng.exerciseTime) 시간")

/*
 bbungbbeng 변수는 Hobby 클래스의 인스턴스이지만, Hobby 클래스가 Person 클래스를 상속받았기 때문에 bbungbbeng 인스턴스는 Person 클래스의 멤버를 포함 -> 따라서 bbungbbeng 인스턴스는 Person 클래스의 멤버인 age, height, 그리고 display() 메서드를 사용할 수 있음
 */


// ----------------------------------------------------- //


// Example #2
class Vehicle {
    var numberOfWheels: Int
    
    required init(wheels: Int) {
        self.numberOfWheels = wheels
    }
}

class Car: Vehicle {
    var color: String
    
    init(color: String) {
        self.color = color
        super.init(wheels: 4)
    }
    
    required init(wheels: Int) {
        self.color = "Black"
        super.init(wheels: wheels)
    }
}

let car = Car(color: "Red")
print("차의 색상: \(car.color)")
print("바퀴의 갯수: \(car.numberOfWheels)")


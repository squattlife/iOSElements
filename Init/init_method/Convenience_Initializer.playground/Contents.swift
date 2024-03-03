import UIKit
import Foundation

/*
 Convenience Initializer (편의 초기화자)
 - 보조적인 초기화 작업을 수행하는 메서드
 - 동일한 클래스나 슈퍼클래스의 지정 초기화자를 호출
 - 초기화 작업 중복을 피하기 위해 사용됨
 */

class Person {
    var age: Int
    var height: Double
    
    func display() {
        print("나이 = \(age), 키 = \(height)")
    }
    
    init(age: Int, height: Double) {
        self.age = age
        self.height = height
    }
    
    convenience init(age: Int) {
        self.init(age: age, height: 180)
    }
}

let person = Person(age: 23)
person.display()

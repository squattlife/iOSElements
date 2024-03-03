import UIKit
import Foundation

/*
 Designated Initializer (지정 초기화자)
 - 주로 클래스나 구조체에서 사용
 - 객체를 완전히 초기화하는 주요 초기화 메서드
 - 모든 속성을 초기화하고, 상위 클래스의 초기화 메서드를 호출
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
}

// var bbungbbeng: Person = Person()  <- 만들어진 initiallizer 호출방식으로 호출해야됨
var bbungbbeng: Person = Person(age: 24, height: 190)
bbungbbeng.display()

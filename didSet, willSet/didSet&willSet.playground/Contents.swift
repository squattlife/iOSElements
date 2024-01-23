import UIKit

// didSet = property observer
// = 프로퍼티 값의 변경을 모니터링 함 -> 프로퍼티 값이 변경되기 직전, 직후를 감지


class propertyObeserving {
    var propertyValue = 0 {
        didSet(oldValue) {
            // 프로퍼티의 값이 변경된 직후에 호출됨 -> oldValue = 변경 전 프로퍼티의 값
            print("값이 \(propertyValue)로 변경되었습니다. 이전 값은 \(oldValue) 입니다.")
        }
        willSet(newValue) {
            // 프로퍼티의 값이 변경되기 직전에 호출됨, newValue = 변경 될 새로운 값
            print("값이 \(newValue)로 변경 예정입니다. 현재 값은 \(propertyValue) 입니다.")
        }
    }
}

var example = propertyObeserving()
example.propertyValue = 10


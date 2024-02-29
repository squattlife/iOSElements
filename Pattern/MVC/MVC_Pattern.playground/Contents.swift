import UIKit
import Foundation

/// Model
struct User {
    let username: String
    let email: String
}
/// 데이터 & 데이터를 다루는 로직 포함
/// 서비스의 핵심 비즈니스 로직을 구현 && 데이터의 형식, 유효성 검사, 데이터베이스 연동 등을 처리
/// 뷰나 컨트롤러와 직접적으로 통신하지 않음
/// 데이터의 변경 사항을 통지하기 위해 옵서버 패턴이나 이벤트 핸들러를 사용


// ---------------------------------------------------------- //


/// View
class UserView {
    func displayUserInfo(username: String, email: String) {
        print("Username: \(username)")
        print("Email: \(email)")
    }
}
/// 사용자 인터페이스를 표시하는 부분 - (사용자가 보는 화면 요소를 담당)
/// 모델로부터 데이터를 가져와 사용자에게 표시 && 사용자 입력을 컨트롤러에 전달
/// 일반적으로 뷰는 컨트롤러나 모델에 대해 알지 못하며, 데이터를 직접 조작하지 않음 -> 컨트롤러를 통해 모델과 상호작용함


// ---------------------------------------------------------- //


/// Controller
class UserController {
    private var userModel: User
    private var userView: UserView

    init(user: User, userView: UserView) {
        self.userModel = user
        self.userView = userView
    }

    func updateUser(username: String, email: String) {
        userModel = User(username: username, email: email)
        updateUserView()
    }

    func updateUserView() {
        userView.displayUserInfo(username: userModel.username, email: userModel.email)
    }
}
/// 모델과 뷰 간의 상호 작용을 관리
/// 사용자 입력을 받아서 해당 입력을 모델에 전달 && 모델의 상태 변화를 감지하여 View를 업데이트
/// 모델과 뷰를 각각 참조하고 있으며, 뷰의 변경 사항을 감지하여 모델에 전달 || 모델의 변경 사항을 감지하여 뷰를 업데이트
/// 용자 인터페이스 로직을 처리 && 뷰와 모델 간의 결합도를 줄여주는 역할수행

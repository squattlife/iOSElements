import UIKit
import Foundation

/// Model
struct User {
    let username: String
    let email: String
}

// ---------------------------------------------------------- //


/// View
protocol UserViewModelDelegate: AnyObject {
    func didUpdateUserInformation(username: String, email: String)
}

class UserView {
    weak var viewModel: UserViewModelDelegate?

    func displayUserInfo(username: String, email: String) {
        print("Username: \(username)")
        print("Email: \(email)")
    }
}

// ---------------------------------------------------------- //
// View & ViewModel -> 서로 약한 참조(weak reference)로 연결되어 메모리 관리가 이루어짐
// ---------------------------------------------------------- //


/// ViewModel
class UserViewModel {
    private var user: User
    weak var view: UserView?

    init(user: User) {
        self.user = user
    }

    func updateUser(username: String, email: String) {
        user = User(username: username, email: email)
        updateView()
    }

    func updateView() {
        view?.displayUserInfo(username: user.username, email: user.email)
    }
}

extension UserViewModel: UserViewModelDelegate {
    func didUpdateUserInformation(username: String, email: String) {
        updateUser(username: username, email: email)
    }
}
/// Model로부터 받은 데이터를 필요한 형식으로 변환하고 가공하여 View에 제공
/// View와의 데이터 바인딩을 담당합니다. View와 ViewModel 사이의 양방향 데이터 바인딩을 통해 뷰의 표시 내용이 변경되면 ViewModel에서 이를 감지하고, ViewModel의 데이터가 변경되면 View에 반영

import Foundation

/*  Configuration -> URLSession -> URLSessionTask  */

// URLSession config 및 인스턴스 생성
let configuration = URLSessionConfiguration.default
let session = URLSession(configuration: configuration)

// 가져올 데이터의 URL을 생성
let url = URL(string: "https://api.github.com/users/squattlife")!

// 데이터를 가져오는 작업 생성
let task = session.dataTask(with: url) { data, response, error in
    // 응답(response) 확인
    guard let httpResponse = response as? HTTPURLResponse,
          (200..<300).contains(httpResponse.statusCode) else {
        // 응답 실패
        print("---> response: \(response)")
        return
    }
    
    // 데이터 확인
    guard let data = data else {
        return
    }
    
    // 데이터를 문자열로 변환하여 출력
    let result = String(data: data, encoding: .utf8)
    print(result)
}

// 네트워킹 작업 시작
task.resume()

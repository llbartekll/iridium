import Foundation
@testable import Iridium

final class URLSessionMock: URLSessionProtocol {
    
    let webSocketTaskMock: URLSessionWebSocketTaskMock
    
    var lastSessionTaskURL: URL?
    
    init(webSocketTaskMock: URLSessionWebSocketTaskMock) {
        self.webSocketTaskMock = webSocketTaskMock
    }
    
    func webSocketTask(with url: URL) -> URLSessionWebSocketTaskProtocol {
        lastSessionTaskURL = url
        return webSocketTaskMock
    }
}

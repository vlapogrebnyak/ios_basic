
import Foundation

class Session {
    
    var token: String?
    var userId: Int?
    
    static var instance = Session()
    
    private init() {
        
    }
}

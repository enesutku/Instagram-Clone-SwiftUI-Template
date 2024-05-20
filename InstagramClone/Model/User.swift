import Foundation

struct User: Identifiable, Codable {
    
    let id: String
    var username: String
    var profileImageURL: String?
    var fullname: String?
    var bio: String?
    let email: String
    
}

extension User {
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "mcqueen", profileImageURL: "profile", fullname: "Lightning McQueen", bio: "Kachow! Winner of Piston Cup 🏆", email: "mcqueen@gmail.com")
    ]
}

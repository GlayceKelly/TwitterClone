//
//  UserService.swift
//  TwitterClone
//
//  Created by Glayce Kelly on 12/08/20.
//  Copyright © 2020 Glayce. All rights reserved.
//

import Foundation
import Firebase

struct UserService {
    static let shared = UserService()
    
    func fetchUser() {
        guard let uid = Auth.auth().currentUser?.uid else { return }
        
        REF_USERS.child(uid).observeSingleEvent(of: .value) { (snapshot) in
            guard let dictionary = snapshot.value as? [String: AnyObject] else { return }
            guard let username = dictionary["username"] as? String else { return }
            
            let user = User(uid: uid, dictionary: dictionary)
        }
    }
}

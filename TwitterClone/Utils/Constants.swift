//
//  Constants.swift
//  TwitterClone
//
//  Created by Glayce on 27/07/20.
//  Copyright © 2020 Glayce. All rights reserved.
//

import Firebase

let STORAGE_REF = Storage.storage().reference()
let STORAGE_PROFILE_IMAGES = STORAGE_REF.child("profile_images")

let DB_REF = Database.database().reference()
let REF_USERS = DB_REF.child("users")

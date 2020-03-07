//
//  User.swift
//  TableViewTest
//
//  Created by Jack Uzcategui on 05/02/2020.
//  Copyright © 2020 __spitzfire__. All rights reserved.
//

import Foundation

class UserResult: Codable {
    let results: [User]
}

class User: Codable {
    let name: UserName
    let countryCode: UserName
    let ensignUrl: UserPicture
    let parentAreaId: UserName
    let parentArea: UserName
    
}

class UserName: Codable {
    let name: String
    let countryCode: String
    let parentAreaId: String
    let parentArea: String
    
}

class UserPicture: Codable {
    let ensignUrl: String
}

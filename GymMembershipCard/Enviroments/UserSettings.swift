//
//  UserSettings.swift
//  GymMembershipCard
//
//  Created by 福田走 on 2020/02/23.
//  Copyright © 2020 Kakeru. All rights reserved.
//

import Foundation

protocol Storage {
    func save(key: String, value: Codable) throws
    func load<T>(key: String, _ type: T.Type) -> T? where T: Codable
    func delete(key: String)
}

internal class UserSettings {
    internal static let shared = UserSettings()
    private init() { }
}

extension UserSettings: Storage {
    internal func save(key: String, value: Codable) throws {
       UserDefaults.standard.set(try value.encode(), forKey: key)
    }
    
    internal func load<T>(key: String, _ type: T.Type) -> T? where T : Codable {
        try? UserDefaults.standard.data(forKey: key)?.decode(type)
    }
        
    internal func delete(key: String) {
        UserDefaults.standard.removeObject(forKey: key)
    }
    
}

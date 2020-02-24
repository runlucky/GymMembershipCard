//
//  DataExtensions.swift
//  GymMembershipCard
//
//  Created by 福田走 on 2020/02/23.
//  Copyright © 2020 Kakeru. All rights reserved.
//

import Foundation

fileprivate let decoder = JSONDecoder()
extension Data {
    internal func decode<T>(_ type: T.Type) throws -> T where T: Decodable {
        try decoder.decode(type, from: self)
    }
}

fileprivate let encoder = JSONEncoder()
extension Encodable {
    internal func encode() throws -> Data {
        try encoder.encode(self)
    }
}

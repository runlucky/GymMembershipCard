//
//  DateExtensions.swift
//  GymMembershipCard
//
//  Created by H5266 on 2019/11/05.
//  Copyright © 2019 Kakeru. All rights reserved.
//

import Foundation

extension Date {
    enum format {
        case ISO8601
        case shortDate
    }

    func toString(_ format: format) -> String {
        switch format {
        case .ISO8601:
            return ISO8601DateFormatter().string(from: self)
        case .shortDate:
            let formatter = DateFormatter()
            formatter.timeStyle = .none
            formatter.dateStyle = .medium
            formatter.locale = Locale(identifier: "ja_JP")
            return formatter.string(from: self)
        }
    }
}

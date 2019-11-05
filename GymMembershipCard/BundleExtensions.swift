//
//  BundleExtensions.swift
//  GymMembershipCard
//
//  Created by H5266 on 2019/11/05.
//  Copyright © 2019 Kakeru. All rights reserved.
//

import Foundation

extension Bundle {
    public var ExpirationDate: Date? {
        guard let plist = plist,
            let expiration = plist["ExpirationDate"] as? Date else {
                return nil
        }
        return expiration
    }

    private var plist: [String: Any]? {
        // embedded.mobileprovision ファイルを取得する
        guard let url = self.url(forResource: "embedded", withExtension: "mobileprovision") else {
            print("ファイル取得失敗")
            return nil
        }

        // plist としてパースする際にゴミになる箇所をちぎるための処理
        guard let data = try? Data(contentsOf: url),
            let start = "<?xml".data(using: .utf8),
            let end = "</plist>".data(using: .utf8),
            let startRange = data.range(of: start),
            let endRange = data.range(of: end) else {
                print("ファイル準備失敗")
                return nil
        }

        // 余計な場所をちぎり plist から「ExpirationDate」キーの値を抜き出す
        let range = Range(uncheckedBounds: (lower: startRange.lowerBound, upper: endRange.upperBound))
        let body = data.subdata(in: range)
        guard let dictionary = try? PropertyListSerialization.propertyList(from: body, options: [], format: nil),
            let plist = dictionary as? [String: Any] else {
                print("plist 変換失敗")
                return nil
        }

        return plist
    }
}

//
//  InfomationView.swift
//  GymMembershipCard
//
//  Created by H5266 on 2019/11/05.
//  Copyright © 2019 Kakeru. All rights reserved.
//

import SwiftUI

struct InfomationView: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("営業時間")) {
                    RowView("月曜日", "10:00 - 21:00")
                    RowView("火曜日", "10:00 - 21:00")
                    RowView("水曜日", "10:00 - 21:00")
                    RowView("木曜日", "休館日")
                    RowView("金曜日", "10:00 - 21:00")
                    RowView("土曜日", "10:00 - 21:00")
                    RowView("日曜日", "10:00 - 18:00")
                }
                Section {
                    RowView("祝日", "10:00 - 18:00")
                }

                Section(header: Text("その他")) {
                    RowView("有効期限", Bundle.main.ExpirationDate?.toString(.shortDate) ?? "不明")
                    RowView("バージョン", Bundle.main.version ?? "不明")
                }
            }
            .navigationBarTitle("Infomation")
        }
    }
}

struct RowView: View {
    private let key: String
    private let value: String

    init(_ key: String, _ value: String) {
        self.key = key
        self.value = value
    }

    var body: some View {
        HStack {
            Text(key)
            Spacer()
            Text(value)
                .foregroundColor(.secondary)
        }
    }
}


struct InfomationViewPreview: PreviewProvider {
    static var previews: some View {
        InfomationView()
    }
}

//
//  Menu.swift
//  GymMembershipCard
//
//  Created by H5266 on 2019/11/01.
//  Copyright © 2019 Kakeru. All rights reserved.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationView {
            List {
                Workout("ロータリートールソー", weight: 72)
                Workout("アブドミナルクランチ", weight: 18)
                Workout("ラットプルダウン", weight: 45)
                Workout("レッグプレス", weight: 135)
                Workout("チェストプレス", weight: 32)

            }.navigationBarTitle("aaa")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

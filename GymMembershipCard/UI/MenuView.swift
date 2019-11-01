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
                WorkoutView(Workout("ロータリートールソー", kg: 72))
                WorkoutView(Workout("アブドミナルクランチ", kg: 18, option: "4"))
                WorkoutView(Workout("ラットプルダウン", kg: 45, option: "3"))
                WorkoutView(Workout("レッグプレス", kg: 135, option: "3"))
                WorkoutView(Workout("チェストプレス", kg: 32, option: "3 3"))

            }.navigationBarTitle("Workout Menu")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

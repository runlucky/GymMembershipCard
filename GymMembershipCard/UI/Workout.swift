//
//  Workout.swift
//  GymMembershipCard
//
//  Created by H5266 on 2019/11/01.
//  Copyright © 2019 Kakeru. All rights reserved.
//

import SwiftUI

struct Workout: View {
    private let name: String
    private let kg: Int
    private let otherSettings: String

    init (_ name: String, weight: Int, other: String = ""){
        self.name = name
        self.kg = weight
        self.otherSettings = other
    }

    var body: some View {
        HStack {
            Text(name)
            Text(kg.description + " kg")
            Text(otherSettings)
        }
    }
}

struct Workout_Previews: PreviewProvider {
    static var previews: some View {
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

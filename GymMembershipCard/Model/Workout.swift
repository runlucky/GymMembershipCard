//
//  Workout.swift
//  GymMembershipCard
//
//  Created by H5266 on 2019/11/01.
//  Copyright © 2019 Kakeru. All rights reserved.
//

import Foundation

class AppState: ObservableObject {
    static let shared = AppState()
    
    @Published var workouts: [Workout] = [
        Workout("ロータリートールソー", kg: "72"),
        Workout("アブドミナルクランチ", kg: "18", option: "椅子2"),
        Workout("ラットプルダウン", kg: "45", option: "椅子3"),
        Workout("レッグプレス", kg: "108", option: "椅子2"),
        Workout("チェストプレス", kg: "32", option: "背中4 椅子3")
    ]
}

class Workout : ObservableObject {
    @Published var name: String
    @Published var kg: String
    @Published var option: String

    init(_ name: String, kg: String, option: String = "") {
        self.name = name
        self.kg = kg
        self.option = option
    }
}



//
//  Workout.swift
//  GymMembershipCard
//
//  Created by H5266 on 2019/11/01.
//  Copyright © 2019 Kakeru. All rights reserved.
//

import Foundation

struct Workout {
    let name: String
    let kg: Int
    let option: String

    init(_ name: String, kg: Int, option: String = "") {
        self.name = name
        self.kg = kg
        self.option = option
    }
}

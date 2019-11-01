//
//  Workout.swift
//  GymMembershipCard
//
//  Created by H5266 on 2019/11/01.
//  Copyright © 2019 Kakeru. All rights reserved.
//

import SwiftUI

struct WorkoutView: View {
    private let workout: Workout

    init (_ workout: Workout){
        self.workout = workout
    }

    var body: some View {
        NavigationLink(destination: Text("nav!")) {
            HStack {
                Text(workout.name)
                Text(workout.kg.description + " kg")
                Text(workout.option)
            }
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}

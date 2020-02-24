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
        NavigationLink(destination: WorkoutDetailView(workout)) {
            HStack {
                Text(workout.name)
                Spacer()
                Text(workout.option)
                Text(workout.kg.description + " kg")
                    .frame(width: 55, alignment: .trailing)
            }
        }
    }
}

struct WorkoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutListView()
    }
}

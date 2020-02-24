//
//  Menu.swift
//  GymMembershipCard
//
//  Created by H5266 on 2019/11/01.
//  Copyright © 2019 Kakeru. All rights reserved.
//

import SwiftUI

struct WorkoutListView: View {
    @EnvironmentObject var state: AppState
    
    var body: some View {
        NavigationView {
            Form {

                List {
                    ForEach(state.workouts, id: \.name) { workout in
                        WorkoutView(workout)
                    }
                }
            }
            .navigationBarTitle("Workout Menu")
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutListView()
    }
}

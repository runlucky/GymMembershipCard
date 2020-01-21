//
//  WorkoutEditView.swift
//  GymMembershipCard
//
//  Created by H5266 on 2019/11/05.
//  Copyright © 2019 Kakeru. All rights reserved.
//

import SwiftUI

struct WorkoutEditView: View {
    private let model: Workout

    @State var weight: Float = 50.0
    @State var option: Int = 1
    @State var enable: Bool = true

    @State var str: String = ""

    init(_ workout: Workout) {
        //        weight = Float(workout.kg)
        //        option = Int(workout.option)!

        self.model = workout

    }

    var body: some View {
        Form {
            NavigationLink(destination: WorkoutEditView(model)) {
                RowView("Weight", model.kg.description + " kg")
            }

            Section (header: Text("設定")) {
                NavigationLink(destination: Form {
                    Text("asdf")
                }) {
                    RowView("椅子", model.kg.description + " kg")
                }
                RowView("背中", model.kg.description + " kg")
                RowView("", "無効")
            }
        }
        .navigationBarTitle(Text(model.name), displayMode: .inline)
    }


}

struct WorkoutEditView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutEditView(Workout("チェストプレス", kg: 32, option: "3 3"))
    }
}

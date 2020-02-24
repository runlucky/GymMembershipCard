//
//  WorkoutEditView.swift
//  GymMembershipCard
//
//  Created by H5266 on 2019/11/05.
//  Copyright © 2019 Kakeru. All rights reserved.
//

import SwiftUI

struct WorkoutDetailView: View {
    @ObservedObject private var model: Workout
    @State private var kg: String = ""

    init(_ workout: Workout) {
        model = workout
    }

    var body: some View {
        Form {
            HStack {
                Text("Weight")
                Spacer()
                TextField("input me", text: $kg)
            }
//
//            NavigationLink(destination: WorkoutDetailView(model)) {
//                RowView("Weight", model.kg.description + " kg")
//            }
//
//            Section (header: Text("設定")) {
//                NavigationLink(destination: Form {
//                    Text("asdf")
//                }) {
//                    RowView("椅子", model.kg.description + " kg")
//                }
//                RowView("背中", model.kg.description + " kg")
//                RowView("", "無効")
//            }
        }
        .navigationBarTitle(Text(model.name), displayMode: .inline)
        .onDisappear {
            print("\(self.model.kg) = \(self.kg)")
            self.model.kg = self.kg
        }
    }


}

struct WorkoutEditView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutDetailView(Workout("チェストプレス", kg: "32", option: "3 3"))
    }
}

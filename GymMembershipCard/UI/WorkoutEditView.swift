//
//  WorkoutEditView.swift
//  GymMembershipCard
//
//  Created by H5266 on 2019/11/05.
//  Copyright © 2019 Kakeru. All rights reserved.
//

import SwiftUI

struct WorkoutEditView: View {
    private let workout: Workout

    @State var weight: Float = 50.0
    @State var option: Int = 1
    @State var enable: Bool = true

    @State var str: String = ""

    init(_ workout: Workout) {
        //        weight = Float(workout.kg)
        //        option = Int(workout.option)!

        self.workout = workout

    }

    var body: some View {
        NavigationView {
            List {
                Text("Weight")
                Stepper(value: $option, in: 1...10, label: {
                    Text("\(option) kg")
                })

                ForEach(1...3, id: \.self) { index in
                    VStack {
                        Text("")

                        Text("Option " + index.description)
                        Toggle(isOn: self.$enable) { Text("有効") }
                        Stepper(value: self.$option, in: 1...10, label: {
                            Text("\(self.option)")
                        })
                    }
                }
            }
            .navigationBarTitle(workout.name)
        }
    }


}

struct WorkoutEditView_Previews: PreviewProvider {
    static var previews: some View {
        WorkoutEditView(Workout("チェストプレス", kg: 32, option: "3 3"))
    }
}

//
//  ContentView.swift
//  GymMembershipCard
//
//  Created by H5266 on 2019/10/30.
//  Copyright © 2019 Kakeru. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
 
    var body: some View {
        TabView(selection: $selection){
            CardView()
                .tabItem {
                    VStack {
                        Image(systemName: "person.crop.rectangle.fill")
                        Text("Card")
                    }
                }
                .tag(0)

            WorkoutListView()
                .environmentObject(AppState.shared)
                .tabItem {
                    VStack {
                        Image(systemName: "list.dash")
                        Text("Menu")
                    }
                }
                .tag(1)

            InfomationView()
                .tabItem {
                    VStack {
                        Image(systemName: "info.circle")
                        Text("Infomation")
                    }
                }
                .tag(2)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

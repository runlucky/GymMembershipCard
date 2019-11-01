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
            VStack {
                Text("First View")
                    .font(.title)

                Text("First View2")
            }.tabItem {
                VStack {
                    Image(systemName: "person.crop.rectangle.fill")
                    Text("Card")
                }
            }
            .tag(0)

            Text("Second View")
                .font(.title)
                .tabItem {
                    VStack {
                        Image(systemName: "list.dash")
                        Text("Menu")
                    }
                }
                .tag(1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  InfomationView.swift
//  GymMembershipCard
//
//  Created by H5266 on 2019/11/05.
//  Copyright © 2019 Kakeru. All rights reserved.
//

import SwiftUI

struct InfomationView: View {
    var body: some View {
        NavigationView {
            List {
                Text("月曜日　10:00 - 21:00")
                Text("火曜日　10:00 - 21:00")
                Text("水曜日　10:00 - 21:00")
                Text("木曜日　休館日")
                Text("金曜日　10:00 - 21:00")
                Text("土曜日　10:00 - 21:00")
                Text("日曜日　10:00 - 18:00")
                Text("祝日　　10:00 - 18:00")
                    .padding(.top, 20.0)
                    .padding(.bottom, 5.0)
            }
            .navigationBarTitle("Infomation")
        }
    }
}


struct InfomationViewPreview: PreviewProvider {
    static var previews: some View {
        InfomationView()
    }
}

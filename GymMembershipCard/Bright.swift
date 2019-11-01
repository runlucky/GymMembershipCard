//
//  Bright.swift
//  GymCard
//
//  Created by H5266 on 2019/10/24.
//  Copyright © 2019 Kakeru. All rights reserved.
//

import Foundation
import UIKit

class Bright {
    private static var backup = CGFloat(0.5)

    static func Max(){
        backup = UIScreen.main.brightness
        UIScreen.main.brightness = CGFloat(1.0)
    }

    static func Restore() {
        UIScreen.main.brightness = backup
    }
}

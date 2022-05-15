//
//  UILabel + Extension.swift
//  iChatApp
//
//  Created by Дмитрий Старков on 21.03.2022.
//

import Foundation
import UIKit

extension UILabel {
    convenience init(text: String?) {
        self.init()
        self.text = text
    }
}

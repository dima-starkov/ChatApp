//
//  OneLineTextField.swift
//  iChatApp
//
//  Created by Дмитрий Старков on 21.03.2022.
//

import UIKit

class OneLineTextField: UITextField {
    convenience init(font: UIFont? = .avenir20()) {
        self.init()
        self.font = font
        self.borderStyle = .none
        self.translatesAutoresizingMaskIntoConstraints = false
        var bottomView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 0, height: 0))
//        bottomView.backgroundColor =
    }
}

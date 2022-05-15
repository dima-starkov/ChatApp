//
//  UIImageView + Extension.swift
//  iChatApp
//
//  Created by Дмитрий Старков on 21.03.2022.
//

import UIKit

extension UIImageView {
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        self.init()
        self.image = image
        self.contentMode = contentMode
    }
}

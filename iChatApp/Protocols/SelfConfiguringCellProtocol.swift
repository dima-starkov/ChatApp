//
//  SelfConfiguringCellProtocol.swift
//  iChatApp
//
//  Created by Дмитрий Старков on 26.03.2022.
//

import Foundation

protocol SelfConfiguringCell {
    static var reuseId: String { get }
    func configure(with model: MChat)
}

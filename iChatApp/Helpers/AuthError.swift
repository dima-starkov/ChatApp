//
//  AuthError.swift
//  iChatApp
//
//  Created by Дмитрий Старков on 27.03.2022.
//

import Foundation

enum AuthError {
    case notField
    case invalidEmail
    case passwordNotMatches
    case unknownError
    case ServerError
}

extension AuthError: LocalizedError {
    var errorDescription: String? {
        switch self {
        case .notField:
            return NSLocalizedString("Заполните все поля", tableName: "",value: "", comment: "")
        case .invalidEmail:
            return NSLocalizedString("Некорректный еmail", tableName: "",value: "", comment: "")
        case .passwordNotMatches:
            return NSLocalizedString("Пароли не совпадают", tableName: "",value: "", comment: "")
        case .unknownError:
            return NSLocalizedString("Неизвестная ошибка", tableName: "",value: "", comment: "")
        case .ServerError:
            return NSLocalizedString("Ошибка сервера", tableName: "",value: "", comment: "")
        }
    }
}

//
//  BankManagerError.swift
//  BankManagerConsoleApp
//
//  Created by Yun, Ryan on 2021/04/29.
//

enum BankManagerError: Error, CustomStringConvertible {
    case invalidMenu
    case failedToInitializingTask
    case failedToInitializingGrade
    
    var description: String {
        switch self {
        case .invalidMenu:
            return "Invalid Input."
        case .failedToInitializingTask:
            return "Failed to initializing task of a client."
        case .failedToInitializingGrade:
            return "Failed to initializing grade of a client."
        }
    }
}

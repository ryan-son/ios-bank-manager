//
//  BankManagerError.swift
//  BankManagerConsoleApp
//
//  Created by Yun, Ryan on 2021/04/29.
//

enum BankManagerError: Error, CustomStringConvertible {
    case invalidMenu
    case failedToInitializingTask
    
    var description: String {
        switch self {
        case .invalidMenu:
            return "Invalid Input"
        case .failedToInitializingTask:
            return "Failed to initializing task of a client"
        }
    }
}

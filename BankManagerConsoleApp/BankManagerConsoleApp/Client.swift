//
//  Client.swift
//  BankManagerConsoleApp
//
//  Created by Yun, Ryan on 2021/04/27.
//

import Foundation

final class Client: Operation {
    // MARK: - Properties
    let waitingNumber: Int
    
    init(_ waitingNumber: Int) {
        self.waitingNumber = waitingNumber
        
    }
    
    // MARK: - NameSpaces
    private enum Task: CaseIterable {
        case deposit
        case loan
        
        var processTime: Double {
            switch self {
            case .deposit:
                return 0.7
            case .loan:
                return 1.1
            }
        }
        
        var name: String {
            switch self {
            case .deposit:
                return "예금"
            case .loan:
                return "대출"
            }
        }
    }
    // MARK: - Private Method
    func startTask() -> String {
        return "\(waitingNumber) 번 고객 업무 시작."
    }
    
    func endTask() -> String {
        return "\(waitingNumber) 번 고객 업무 종료!"
    }
    
    // MARK: - Override Method from the Operation Class
    override func main() {
        let startTaskText: String = startTask()
        let endTaskText: String = endTask()
        
        print(startTaskText)
        Thread.sleep(forTimeInterval: Task.deposit.processTime)
        print(endTaskText)
    }
}


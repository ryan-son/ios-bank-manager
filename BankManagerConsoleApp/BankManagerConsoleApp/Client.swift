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
    private let task: Task
    let grade: Grade
    
    init(_ waitingNumber: Int) throws {
        guard let randomTask = Task.allCases.randomElement() else {
            throw BankManagerError.failedToInitializingTask
        }
        
        guard let randomGrade = Grade.allCases.randomElement() else {
            throw BankManagerError.failedToInitializingGrade
        }
        
        self.waitingNumber = waitingNumber
        self.task = randomTask
        self.grade = randomGrade
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
    
    enum Grade: CaseIterable, Comparable {
        case vvip
        case vip
        case normal
        
        var name: String {
            switch self {
            case .vvip:
                return "VVIP"
            case .vip:
                return "VIP"
            case .normal:
                return "일반"
            }
        }
    }
    
    // MARK: - Private Method
    func startTask() -> String {
        return "💸 \(waitingNumber) 번 \(grade.name) 고객 \(task.name) 업무 시작."
    }
    
    func endTask() -> String {
        return "✅ \(waitingNumber) 번 \(grade.name) 고객 \(task.name) 업무 종료!"
    }
    
    // MARK: - Override Method from the Operation Class
    override func main() {
        let startTaskText: String = startTask()
        let endTaskText: String = endTask()
        
        print(startTaskText)
        
        switch self.task {
        case .deposit:
            Thread.sleep(forTimeInterval: Task.deposit.processTime)
        case .loan:
        Thread.sleep(forTimeInterval: Task.loan.processTime)
        }
        
        print(endTaskText)
    }
}


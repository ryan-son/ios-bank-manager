//
//  Customer.swift
//  BankManagerConsoleApp
//
//  Created by Yunhwa on 2021/04/27.
//
import Foundation

final class Customer: Operation {
    let waitingNumber: Int
    
    private enum TimeForProcessingTask {
        static let deposit: Double = 0.7
        static let withdrawal: Double = 1.1
    }

    init(_ waitingNumber: Int) {
        self.waitingNumber = waitingNumber
    }
    
    override func main() {
        print("\(waitingNumber) 번 고객 업무 시작")
        Thread.sleep(forTimeInterval: TimeForProcessingTask.deposit)
        print("\(waitingNumber) 번 고객 업무 종료")
    }
}

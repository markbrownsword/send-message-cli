//
//  Sms.swift
//

final class Sms<MessageType>: Receiver {
    func receive(message: MessageType) {
        let name = "\(type(of: self))"
        let className = "\(type(of: message))"
        print("\(name) received: \(className)")
    }
}

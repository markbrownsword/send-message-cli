//
//  Email.swift
//

final class Email<MessageType: CustomStringConvertible>: Receiver {
    func receive(message: MessageType) {
        let name = "\(type(of: self))"
        print("Type \(name) received message: \(message)")
    }
}

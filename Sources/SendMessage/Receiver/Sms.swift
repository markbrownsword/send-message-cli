//
//  Sms.swift
//

final class Sms<MessageType: CustomStringConvertible>: Receiver {
    func receive(message: MessageType) {
        let name = "\(type(of: self))"
        print("Type \(name) received message: \(message)")
    }
}

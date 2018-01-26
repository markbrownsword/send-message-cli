//
//  Sender.swift
//

protocol Sender {
    associatedtype MessageType: CustomStringConvertible
    var receivers: [AnyReceiver<MessageType>] { get }
    func send(message: MessageType)
}

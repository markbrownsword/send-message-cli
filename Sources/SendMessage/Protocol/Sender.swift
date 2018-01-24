//
//  Sender.swift
//

protocol Sender {
    associatedtype MessageType
    var receivers: [AnyReceiver<MessageType>] { get }
    func send(message: MessageType)
}

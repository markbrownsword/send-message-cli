//
//  Sender.swift
//

protocol Sender {
    associatedtype MessageType
    var providers: [AnyProvider<MessageType>] { get }
    func send(message: MessageType)
}

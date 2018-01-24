//
// Receiver.swift
//

protocol Receiver {
    associatedtype MessageType
    func receive(message: MessageType)
}

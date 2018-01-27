//
// Receiver.swift
//

protocol Receiver {
    associatedtype MessageType: CustomStringConvertible
    func receive(message: MessageType)
}

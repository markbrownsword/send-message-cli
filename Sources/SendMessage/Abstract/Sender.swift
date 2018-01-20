//
//  Sender.swift
//

protocol Sender {
    associatedtype MessageType
    associatedtype ReceiverType: Receiver
    
    var providers: [ReceiverType] { get }
    
    func send(message: MessageType)
}

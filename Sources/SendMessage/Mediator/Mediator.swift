//
// Mediator.swift
//

final class Mediator<MessageType: CustomStringConvertible>: Sender {
    internal var receivers: [AnyReceiver<MessageType>] = []
    
    func add(receiver: AnyReceiver<MessageType>) {
        receivers.append(receiver)
    }
    
    func send(message: MessageType) {
        for receiver in receivers {
            receiver.receive(message: message)
        }
    }
}

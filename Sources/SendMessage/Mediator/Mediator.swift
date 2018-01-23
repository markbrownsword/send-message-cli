//
// Mediator.swift
//

class Mediator<MessageType>: Sender {
    internal var providers: [AnyProvider<MessageType>] = []
    
    func add(provider: AnyProvider<MessageType>) {
        providers.append(provider)
    }
    
    func send(message: MessageType) {
        for provider in providers {
            provider.receive(message: message)
        }
    }
}

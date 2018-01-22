//
// Mediator.swift
//

class Mediator<MessageType>: Sender {
    internal var providers: [Provider<MessageType>] = []
    
    func add(provider: Provider<MessageType>) {
        providers.append(provider)
    }
    
    func send(message: MessageType) {
        for provider in providers {
            provider.receive(message: message)
        }
    }
}

//
// AnyProvider.swift
//

class AnyProvider<MessageType>: Receiver {
    private let name: String
    private let _receive: (_ message: MessageType) -> Void
    
    init<ReceiverType: Receiver>(name: String, _ receiver: ReceiverType) where ReceiverType.MessageType == MessageType {
        self.name = name
        self._receive = receiver.receive
    }
    
    func receive(message: MessageType) {
        let className = "\(type(of: message))"
        print("\(name) received: \(className)")
        
        return self._receive(message)
    }
}

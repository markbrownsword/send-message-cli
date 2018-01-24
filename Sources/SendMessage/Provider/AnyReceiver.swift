//
// AnyReceiver.swift
//

class AnyReceiver<MessageType>: Receiver {
    private let _receive: (_ message: MessageType) -> Void
    
    init<ReceiverType: Receiver>(_ receiver: ReceiverType) where ReceiverType.MessageType == MessageType {
        self._receive = receiver.receive
    }
    
    func receive(message: MessageType) {
        return self._receive(message)
    }
}

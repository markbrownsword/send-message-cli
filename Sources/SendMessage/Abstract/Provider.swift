//
// Provider.swift
//

class Provider<MessageType>: Receiver {
    let name: String
    
    init(name: String) {
        self.name = name
    }
    
    func receive(message: MessageType) {
        let className = "\(type(of: message))"
        print("\(name) received: \(className)")
    }
}

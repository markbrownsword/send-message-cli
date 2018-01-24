// Create a message of type Outage
let outage = Outage(title: "Test", message: "This is a test message")

// Initialise Mediator and Receivers for sending the Outage message
let mediator = Mediator<Outage>()
mediator.add(receiver: AnyReceiver(Sms<Outage>()))
mediator.add(receiver: AnyReceiver(Email<Outage>()))

// Send the message to all receivers
mediator.send(message: outage)

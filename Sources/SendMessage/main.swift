var mediator = OutageMediator()
mediator.add(provider: AnyProvider(name: "Sms", Sms<Outage>()))
mediator.add(provider: AnyProvider(name: "Email", Email<Outage>()))

let outage = Outage(title: "Test", message: "This is a test message")
mediator.send(message: outage)

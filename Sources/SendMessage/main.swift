var mediator = OutageMediator()
mediator.add(provider: Sms<Outage>(name: "Sms"))
mediator.add(provider: Email<Outage>(name: "Email"))

let outage = Outage(title: "Test", message: "This is a test message")
mediator.send(message: outage)

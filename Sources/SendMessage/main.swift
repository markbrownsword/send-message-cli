import Foundation

// Outage Start Date Components
var outageStartDateComponents = DateComponents()
outageStartDateComponents.year = 2018
outageStartDateComponents.month = 2
outageStartDateComponents.day = 5
outageStartDateComponents.hour = 17

// Outage End Date Components
var outageEndDateComponents = DateComponents()
outageEndDateComponents.year = 2018
outageEndDateComponents.month = 2
outageEndDateComponents.day = 5
outageEndDateComponents.hour = 18

// Initialise outage start and end dates
guard let outageStart = Calendar.current.date(from: outageStartDateComponents) else { exit(1) }
guard let outageEnd = Calendar.current.date(from: outageEndDateComponents) else { exit(1) }

// Initialise Outage Message
let outage = Outage(startDate: outageStart, endDate: outageEnd, message: "This is a test message")

// Initialise Mediator and Receivers for sending the Outage message
let mediator = Mediator<Outage>()
mediator.add(receiver: AnyReceiver(Sms<Outage>()))
mediator.add(receiver: AnyReceiver(Email<Outage>()))

// Send the message to all receivers
mediator.send(message: outage)

exit(0)

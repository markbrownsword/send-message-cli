//
//  Outage.swift
//

import Foundation

struct Outage {
    let startDate: Date
    let endDate: Date
    var message: String

    init (startDate: Date, endDate: Date, message: String){
        self.startDate = startDate
        self.endDate = endDate
        self.message = message
    }
}

extension Outage: CustomStringConvertible {
    var description: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return "Start: \(formatter.string(from: startDate)) End: \(formatter.string(from: endDate)) Reason: \(message)"
    }
}

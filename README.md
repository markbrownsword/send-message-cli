# Send Message CLI

##### Introduction
SendMessageCLI is an application that demonstrates the usage of Associated Types in the Swift Programming Language to achieve extensibility in design.

##### Prerequisites 
Swift 4.0, Swift Package Manager, Xcode 9.2

##### Getting Started
	$ mkdir SendMessageCLI
	$ cd SendMessageCLI
	$ git clone https://github.com/markbrownsword/send-message-cli.git .

##### Development
	$ swift build
	$ swift run
	$ swift package generate-xcodeproj

##### Release
	$ swift build -c release -Xswiftc -static-stdlib

##### Brief (What)
The purpose for this demo is to build an application that explores concepts for making dynamic and extensible software systems that can be enhanced without the need to touch existing code. 

##### Why?
By eliminating regression, the need for testing is reduced to just the new functionality being introduced.

##### How?
Swift language features (Generics, Associated Types) 
The [Mediator Pattern](https://github.com/ochococo/Design-Patterns-In-Swift#-mediator)
The Type Erasure Pattern

##### Error
    error: protocol ‘Receiver’ can only be used as a generic constraint because it has Self or associated type requirements


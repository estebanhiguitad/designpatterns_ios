import Foundation

class NotificationInvoker {
    private let command: CommandProtocol
    
    init(command: CommandProtocol) {
        self.command = command
    }
    
    func execute() {
        command.execute()
    }
}

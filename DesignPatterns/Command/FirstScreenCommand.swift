import Foundation

class FirstScreenCommand: BaseScreenCommand, CommandProtocol {
        
    func execute() {
        receiver.buildNotification(title: notification["title"] ?? "", body: notification["body"] ?? "")
        baseViewController.navigationController?.pushViewController(FirstScreenViewController(), animated: true)
    }
}

import Foundation

class SecondScreenCommand: BaseScreenCommand, CommandProtocol {

    func execute() {
        receiver.buildNotification(title: notification["title"] ?? "", body: notification["body"] ?? "")
        baseViewController.navigationController?.pushViewController(SecondScreenViewController(), animated: true)
    }
}

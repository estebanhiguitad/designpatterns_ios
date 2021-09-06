import UIKit

open class BaseScreenCommand {
    let notification: [String: String]
    let receiver: NotificationReceiver = NotificationReceiver()
    let baseViewController: UIViewController
    
    init(baseViewController: UIViewController, notification: [String: String]) {
        self.notification = notification
        self.baseViewController = baseViewController
    }
}

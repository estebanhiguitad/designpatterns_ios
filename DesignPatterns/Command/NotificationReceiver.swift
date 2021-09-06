import Foundation
import UserNotifications

struct NotificationReceiver {
    
    func buildNotification(title: String, body: String) {
        let content = UNMutableNotificationContent()
        content.title = NSString.localizedUserNotificationString(forKey: title, arguments: nil)
        content.body = NSString.localizedUserNotificationString(forKey: body, arguments: nil)
        content.sound = .default
        content.badge = .some(1);
        content.categoryIdentifier = "localNotification"
        // Deliver the notification in 15 seconds.
        let trigger = UNTimeIntervalNotificationTrigger.init(timeInterval: 15.0, repeats: false)
        let request = UNNotificationRequest.init(identifier: "FiveSecond", content: content, trigger: trigger)

        // Schedule the notification.
        let center = UNUserNotificationCenter.current()
        center.add(request)
    }
}

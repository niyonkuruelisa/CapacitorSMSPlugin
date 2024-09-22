import Foundation

@objc public class SMS: NSObject {
    @objc public func echo(_ value: String) -> String {
        print(value)
        return value
    }
}

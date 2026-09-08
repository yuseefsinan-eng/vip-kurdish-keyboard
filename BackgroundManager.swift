import UIKit

class BackgroundManager {
    static let shared = BackgroundManager()
    
    // پاشەکەفتکرنا وێنەی بۆ پاشبنەما کیبۆردێ
    func saveCustomBackground(_ image: UIImage, for key: String = "custom_keyboard_bg") {
        if let data = image.jpegData(compressionQuality: 0.8) {
            UserDefaults.standard.set(data, forKey: key)
        }
    }
    
    // وەرگرتنا وێنەی بۆ پاشبنەمای
    func loadCustomBackground(for key: String = "custom_keyboard_bg") -> UIImage? {
        if let data = UserDefaults.standard.data(forKey: key) {
            return UIImage(data: data)
        }
        return nil
    }
}

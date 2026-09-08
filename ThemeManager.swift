import UIKit

struct ThemeManager {
    // ڕەنگێن VIP یێن تایبەت بۆ کیبۆردا کوردی (رەش و زێڕی)
    static let onyxBlack = UIColor(red: 0.08, green: 0.08, blue: 0.09, alpha: 1.0)
    static let metallicGold = UIColor(red: 0.85, green: 0.65, blue: 0.13, alpha: 1.0)
    static let keyBackground = UIColor(red: 0.15, green: 0.15, blue: 0.17, alpha: 1.0)
    static let textColor = UIColor.white
    
    // شێوازێ گلاسفۆرمیزم (Glassmorphism Effect)
    static func applyGlassEffect(to view: UIView) {
        view.backgroundColor = onyxBlack.withAlphaComponent(0.85)
        view.layer.cornerRadius = 12
        view.layer.borderWidth = 0.5
        view.layer.borderColor = metallicGold.withAlphaComponent(0.4).cgColor
    }
}

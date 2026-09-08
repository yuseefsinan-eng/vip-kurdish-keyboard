import Foundation

struct EmojiManager {
    // کۆمەکا ئیمۆجی و سیمبولێن VIP بۆ کیبۆردا کوردی
    static let vipEmojis: [String] = ["🔥", "⚡", "💎", "⭐", "🚀", "👑", "🎯", "💫"]
    static let kurdishSymbols: [String] = ["☀️", "🌿", "🔴", "⚪", "🟢", "✌️"]
    
    static func getRecentEmojis() -> [String] {
        return vipEmojis + kurdishSymbols
    }
}

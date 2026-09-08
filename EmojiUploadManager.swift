import UIKit

class EmojiUploadManager {
    static let shared = EmojiUploadManager()
    
    // بارکرن و وەرگرتنا وێنەی بۆ دروستکرنا ئیمۆجیێن تایبەت ب ڕێکا وێنەی
    func saveCustomUploadedEmoji(_ image: UIImage, withName name: String) -> String? {
        guard let data = image.pngData() else { return nil }
        let filename = "custom_emoji_\(name)_\(UUID().uuidString).png"
        let url = getDocumentsDirectory().appendingPathComponent(filename)
        
        do {
            try data.write(to: url)
            return url.path
        } catch {
            print("Error saving custom emoji image: \(error)")
            return nil
        }
    }
    
    private func getDocumentsDirectory() -> URL {
        return FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
}

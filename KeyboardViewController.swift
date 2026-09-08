import UIKit

class KeyboardViewController: UIInputViewController {

    let backgroundImageView = UIImageView()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupCustomBackground()
    }

    func setupCustomBackground() {
        backgroundImageView.translatesAutoresizingMaskIntoConstraints = false
        backgroundImageView.contentMode = .scaleAspectFill
        backgroundImageView.backgroundColor = UIColor.darkGray
        view.insertSubview(backgroundImageView, at: 0)
        
        NSLayoutConstraint.activate([
            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    override func textDidChange(_ textInput: UITextInput?) {
        super.textDidChange(textInput)
    }

    override func textWillChange(_ textInput: UITextInput?) {
        super.textWillChange(textInput)
    }
}

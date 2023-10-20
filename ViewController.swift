import Cocoa
import WebKit

class ViewController: NSViewController, WKNavigationDelegate, NSTextFieldDelegate {

    @IBOutlet weak var urlTextField: NSTextField!
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        webView.navigationDelegate = self
        urlTextField.delegate = self
    }

    @IBAction func loadURL(_ sender: Any) {
        loadURLFromTextField()
    }

    func controlTextDidEndEditing(_ obj: Notification) {
        loadURLFromTextField()
    }

    func loadURLFromTextField() {
        let urlString = urlTextField.stringValue
        if !urlString.isEmpty {
            if let url = URL(string: urlString) {
                if url.scheme == nil {
                    if let fixedURL = URL(string: "https://" + urlString) {
                        let request = URLRequest(url: fixedURL)
                        webView.load(request)
                    } else {
                        print("Invalid URL")
                    }
                } else {
                    let request = URLRequest(url: url)
                    webView.load(request)
                }
            } else {
                print("Invalid URL")
            }
        } else {
            print("URL is empty")
        }
    }
    
}

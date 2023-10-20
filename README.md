# Swift Storyboard macOS Web-Browser & Web-Viewer
![macosbrowser](https://github.com/the-young-tech/Swift-macOS-Browser/assets/123611980/f617a3db-662f-452f-8471-244b6904bfde)

* The browser can easily load websites, refresh pages, and can load previous pages with back & forth
  
* Search is not supported yet, but the "auto URL scheme" is applied for websites:
```
if let fixedURL = URL(string: "https://" + urlString) {
    let request = URLRequest(url: fixedURL)
    webView.load(request)
```

## Prerequisites
You will need to have Xcode installed and the link is below:
```
https://developer.apple.com/xcode/
```

* [Swift](https://www.swift.org/) - Programming Language
* [Xcode](https://developer.apple.com/xcode/) - IDE for macOS

## Authors

* [the-young-tech](https://github.com/the-young-tech) - Creator

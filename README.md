# CNChainWrapper

[![CI Status](https://img.shields.io/travis/CouchNut/CNChainWrapper.svg?style=flat)](https://travis-ci.org/CouchNut/CNChainWrapper)
[![Version](https://img.shields.io/cocoapods/v/CNChainWrapper.svg?style=flat)](https://cocoapods.org/pods/CNChainWrapper)
[![License](https://img.shields.io/cocoapods/l/CNChainWrapper.svg?style=flat)](https://cocoapods.org/pods/CNChainWrapper)
[![Platform](https://img.shields.io/cocoapods/p/CNChainWrapper.svg?style=flat)](https://cocoapods.org/pods/CNChainWrapper)

在日常开发中，使用 Swift 实现链式调用时，会写出以下类似代码：

```swift
let imageView = UIImageView()
imageView.backgroundColor = .yellow
imageView.image = UIImage(named: "named")
imageView.alpha = 0.5
imageView.contentMode = .scaleAspectFit
```

CNChainWrapper is a Swift chain call library

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Usage

In any Swift file where you want to use CNChainWrapper, simply `import CNChainWrapper`.

## Installation

### CocoaPods

CNChainWrapper is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'CNChainWrapper'
```

### Carthage

Support as soon as possible

### Swift Package Manager

Support as soon as possible

## Contributing
Issues and pull requests are welcome! Please ensure that you have the latest [SwiftLint](https://github.com/realm/SwiftLint) installed before committing and that there are no style warnings generated when building.

## Author

CouchNut, yit_copper@163.com

## License

CNChainWrapper is available under the MIT license. See the LICENSE file for more info.

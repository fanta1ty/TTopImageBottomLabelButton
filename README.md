![LOGO](https://github.com/fanta1ty/TRightImageButton/blob/master/ScreenShot/Logo.png)

# TTopImageBottomLabelButton

TTopImageBottomLabelButton is a simple and flexible UI component fully written in Swift. TTopImageBottomLabelButton is developed to help programmers create a button with top image and bottom title quickly without having to write many lines of codes.

 [![Swift 5.0](https://img.shields.io/badge/Swift-5.0-brightgreen)](https://developer.apple.com/swift/)
 [![Version](https://img.shields.io/cocoapods/v/TTopImageBottomLabelButton.svg?style=flat)](https://cocoapods.org/pods/TTopImageBottomLabelButton)
 [![License](https://img.shields.io/cocoapods/l/TTopImageBottomLabelButton.svg?style=flat)](https://cocoapods.org/pods/TTopImageBottomLabelButton)
 [![Platform](https://img.shields.io/cocoapods/p/TTopImageBottomLabelButton.svg?style=flat)](https://cocoapods.org/pods/TTopImageBottomLabelButton)
[![Email](https://img.shields.io/badge/contact-@thinhnguyen12389@gmail.com-blue)](thinhnguyen12389@gmail.com)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

TTopImageBottomLabelButton is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TTopImageBottomLabelButton'
```

## Usage
```swift
import TTopImageBottomLabelButton
```

1) Initial ``TTopImageBottomLabelButton`` 
```swift
let topImageBottomLabelButton = TTopImageBottomLabelButton(title: "Top Image Bottom Title", image: UIImage(named: "Image")!)
```

2) To override bottom title, please input into ``customTitleLabel.text`` property
```swift
topImageBottomLabelButton.customTitleLabel.text = "Top Image Bottom Label Button"
```

3) To override top image, please add image into ``topImageView.image`` property
```swift
topImageBottomLabelButton.topImageView.image = UIImage(named: "Image")
```

![til](https://github.com/fanta1ty/TRightImageButton/blob/master/ScreenShot/demo.gif)

## Requirements
- iOS 9.3 or later
- Swift 5.0 or later

## Author

fanta1ty, thinhnguyen12389@gmail.com

## License

TTopImageBottomLabelButton is available under the MIT license. See the LICENSE file for more info.

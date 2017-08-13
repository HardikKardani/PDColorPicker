# 🎨 PDColorPicker

[![CI Status](http://img.shields.io/travis/pdil/PDColorPicker.svg?style=flat)](https://travis-ci.org/pdil/PDColorPicker)
[![codecov](https://codecov.io/gh/pdil/PDColorPicker/branch/master/graph/badge.svg)](https://codecov.io/gh/pdil/PDColorPicker)

[![Version](https://img.shields.io/cocoapods/v/PDColorPicker.svg?style=flat)](http://cocoapods.org/pods/PDColorPicker)
[![License](https://img.shields.io/cocoapods/l/PDColorPicker.svg?style=flat)](http://cocoapods.org/pods/PDColorPicker)
[![Platform](https://img.shields.io/cocoapods/p/PDColorPicker.svg?style=flat)](http://cocoapods.org/pods/PDColorPicker)

<img src="https://raw.githubusercontent.com/pdil/PDColorPicker/master/Resources/colorpicker.jpg" width=300>

## 📄 Requirements

* iOS 9.0 or greater
* Xcode 7 or greater

## 💻 Installation

PDColorPicker is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "PDColorPicker"
```

## 📝 Usage

```swift
import UIKit
import PDColorPicker  // 1.

class MyViewController: UIViewController, Dimmable {
  
    // ...
  
    func presentColorPicker() {
        // 2.
        let colorPickerVC = PDColorPickerViewController(current: .blue, tintColor: .black) {
            [weak self] newColor in

            guard let color = newColor else {
                print("User tapped cancel")
            }

            print("A new color was selected! RGB: \(color.red), \(color.green), \(color.blue)")
         }
  
         // 3.
         dim() // see Dimmable documentation for extra options
    
         // 4.
         colorPickerVC.modalPresentationStyle = .overCurrentContext
         present(colorPickerVC, animated: true)
    }
  
    // ...
  
}
```

1. Import the  `PDColorPicker` framework.
2. Instantiate a new `PDColorPickerViewController`.
3. Implement the `Dimmable` protocol and dim the presenting view controller (optional but highly recommended).
4. Present the color picker as a modal view controller.
5. Use the color picker to select a color. When **Save** or **Cancel** is tapped, the completion handler specified in the initializer will automatically provide the new color. If the user taps cancel, `nil` is returned.

#### Bonus

To achieve the white status bar while the presenting view controller is dimmed, set `UIViewControllerBasedStatusBarAppearance` to `YES` in your `Info.plist`.

You can also copy the code here into the plist file:
```
<key>UIViewControllerBasedStatusBarAppearance</key>
<true/>
```

Next, in the _presenting_ view controller, include the following code:
```swift
override var preferredStatusBarStyle: UIStatusBarStyle {
  return .lightContent
}
```

## 📲 Example

To run the example project, clone the repo, and run `pod install` from the Example directory.

## 🙋‍♂️ Author

Paolo Di Lorenzo [[Email](mailto:paolo@dilorenzo.pl?subject=PDColorPicker)] [[Website](https://dilorenzo.pl)] [[Twitter](https://twitter.com/dilorenzopl)] [[StackOverflow](https://stackoverflow.com/users/7264964/paolo)]

## ⚖️ License

PDColorPicker is available under the GPL-3.0 license. See the LICENSE file for more info.

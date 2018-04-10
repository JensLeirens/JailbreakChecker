# JailbreakChecker

[![Version](https://img.shields.io/cocoapods/v/JailbreakChecker.svg?style=flat)](http://cocoapods.org/pods/JailbreakChecker)
[![License](https://img.shields.io/cocoapods/l/JailbreakChecker.svg?style=flat)](http://cocoapods.org/pods/JailbreakChecker)
[![Platform](https://img.shields.io/cocoapods/p/JailbreakChecker.svg?style=flat)](http://cocoapods.org/pods/JailbreakChecker)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

``` 
var outputString = ""
let result = JailbreakChecker.jailbreakCheck()
        
if result.count > 0 {
  outputString.append(" The Device has been Jailbroken! \n\n")
            
  // display the results
  for item in result {
    outputString.append(item.key + " = " + item.value.description + "\n")
  }
}
```

## Installation

JailbreakChecker is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'JailbreakChecker'
```

## Author

Mafken

## License

JailbreakChecker is available under the MIT license. See the LICENSE file for more info.

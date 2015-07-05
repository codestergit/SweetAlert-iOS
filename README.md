Sweet Alert iOS
==============

Beautiful Animated custom Alert View inspired from javascript library [SweetAlert](http://tristanedwards.me/sweetalert).
Written in Swift this SweetAlertView can be used in Swift and Objective-C projects. SweetAlertView provides live intutive experience to user actions.It can be used in place of `UIAlertView` and `UIAlertController`

###ScreenShots
![SweetAlert](https://github.com/codestergit/SweetAlert-iOS/blob/master/SweetAlertiOS.gif)

###Usage
#####Basic message：
```swift
SweetAlert().showAlert("Here's a message!")
```
#####Title with a text under：
```swift
SweetAlert().showAlert("Here's a message!", subTitle: "It's pretty, isn't it?", style: AlertStyle.None)
```
#####Animated Success message：
```swift
SweetAlert().showAlert("Good job!", subTitle: "You clicked the button!", style: AlertStyle.Success)
```
#####Warning message and Chained Animated Success messge on completion:
```swift
SweetAlert().showAlert("Are you sure?", subTitle: "You file will permanently delete!", style: AlertStyle.Warning, buttonTitle:"Cancel", buttonColor:UIColorFromRGB(0xD0D0D0) , otherButtonTitle:  "Yes, delete it!", otherButtonColor: UIColorFromRGB(0xDD6B55)) { (isOtherButton) -> Void in
            if isOtherButton == true {
            
                println("Cancel Button  Pressed")
            }
            else {
                SweetAlert().showAlert("Deleted!", subTitle: "Your imaginary file has been deleted!", style: AlertStyle.Success)
            }
}
```

#####Chained Alerts on actions with custom button colors:
```swift
//Chaining alerts with messages on button click
SweetAlert().showAlert("Are you sure?", subTitle: "You file will permanently delete!", style: AlertStyle.Warning, buttonTitle:"No, cancel plx!", buttonColor:UIColorFromRGB(0xD0D0D0) , otherButtonTitle:  "Yes, delete it!", otherButtonColor: UIColorFromRGB(0xDD6B55)) { (isOtherButton) -> Void in
            if isOtherButton == true {
                
                SweetAlert().showAlert("Cancelled!", subTitle: "Your imaginary file is safe", style: AlertStyle.Error)
            }
            else {
                SweetAlert().showAlert("Deleted!", subTitle: "Your imaginary file has been deleted!", style: AlertStyle.Success)
            }
}
```
#####Custom icon alert:
```swift
SweetAlert().showAlert("Sweet!", subTitle: "Here's a custom image.", style: AlertStyle.CustomImag(imageFile: "thumb.jpg"))
```

###Diffrent Animated Styles for Diffrent Purposes
```swift
enum AlertStyle {
    case Success,Error,Warning,None
    case CustomImag(imageFile:String)
}
```
###Installation
Add the `SwiftAlert.swift` in to your project.

###Reuirements
- Xcode 7.0+
- iOS 7.0+

## License

    The MIT License (MIT)

    Copyright (c) 2014 codestergit

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.

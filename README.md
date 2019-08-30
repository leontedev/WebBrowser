# WebBrowser
Project 4 of 100DaysOfSwift

In this project we’re going to build a simple web browser using WebKit.

## Day 24
<p align="center">
    <img src="Screen Shot 2019-08-29 at 11.56.38 AM.png" />
</p>

## Day 25

### KVO. UIProgressView. ToolbarItems.
The View Controller instance property: toolbarItems
https://developer.apple.com/documentation/uikit/uiviewcontroller/1621867-toolbaritems

"This property contains an array of UIBarButtonItem objects and works in conjunction with a UINavigationController object. If this view controller is embedded inside a navigation controller interface, and the navigation controller displays a toolbar, this property identifies the items to display in that toolbar."

navigationController?.isToolbarHidden = false

And then simply at the UIBarButtonItems to the toolbarItems property

toolbarItems = [progressButton, spacer, refresh]

### Introduction to KVO - Key Value Observing. 
We're adding an observer on the webView, for the WKWebView.estimatedProgress property. 
Then we override the observeValue function and check if it's for this keyPath, and update the progressView on each estimatedProgress change.

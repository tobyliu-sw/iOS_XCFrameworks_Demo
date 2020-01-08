# iOS_XCFrameworks_Demo

This repository consists of two projects.

## HelloWorldController: XCFrameworks project

- This sample framework contains a customized subclass of UIViewController which shows a label and an image.
- When user clicks the button, the view controller will be dismissed and notify the presenter via delegate function.
- With the integrated post-actions script, the XCFramework folder will be generated automatically by archiving the project.

## HelloWorldControllerTest: test application project

- This sample iOS application project demonstrates how to link and use the generated XCFramework above.
- When user clicks "Hello World" button, the customized view controller in XCFramework will be presented.
- The delegate function is also implemented in this application to print a console log after user dismisses the view controller.

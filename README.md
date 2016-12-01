# Custom Views

Some simple classes to easily add borders and corner radius to UI elements. The settings for these properties are all avaiable in Storyboard. 

There are three custom classes in this example project:

- CustomButton
- CustomImageView
- CustomView

## @IBInspectable

Use @IBInspectible to add properties that can be set using the property inspector in storyboard. Almost any type of value can be edited in Storyboard via @IBInspectable: Int, Float (CGFloat, Double, etc.), UIColor, Bool, and more. 

Use @IBInspectable to set up properties to alter the appearnce or features of an element. For example most of the classes here use a variable for strokeWidth, strokeColor, and cornerRadius. 

## @IBDesignable

Use @IBDesignable to view changes in storyboard. Changes made to the appearance of a view are normally not visible until the app is built and running. Classes declared as @IBDesignable update their appear in Storyboard. 

## Goals 

The goals of this are make library of useful classes that can be used to better designed apps faster by giving easier acess to properties that control the appearnce of UI widgets. 

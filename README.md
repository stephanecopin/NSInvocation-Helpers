# NSInvocation+Helpers

A simple category on `NSInvocation` that adds the property `objectReturnValue` to it, allowing to easily get and set the return value of the invocation as an Objective-C object.  
The category also adds a method `stc_clone` which will clone the receiver `NSInvocation` (The return value will **not** be cloned).

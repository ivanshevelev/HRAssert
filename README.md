# HRAssert

[![Version](https://img.shields.io/cocoapods/v/HRAssert.svg?style=flat)](http://cocoapods.org/pods/HRAssert)
[![License](https://img.shields.io/cocoapods/l/HRAssert.svg?style=flat)](http://cocoapods.org/pods/HRAssert)
[![Platform](https://img.shields.io/cocoapods/p/HRAssert.svg?style=flat)](http://cocoapods.org/pods/HRAssert)

Custom assert defines. Check for isKindOfClass: and conformsProtocol:.

## Usage

Kind of class where waiting - NSMutableString and current - NSString instance:

```objective-c
NSString *string = @"test";

HRKindOfClassAssert(NSMutableString, string);
```

Kind of class where waiting - Class and current - Class:

```objective-c
Class stringClass = [NSString class];
Class mutableStringClass = [NSMutableString class];

HRKindOfClassAssert(mutableStringClass, stringClass);
```

Conforms to protocol where waiting - NSCopying and current NSString instance:

```objective-c
NSString *string = @"test";
HRConformsToProtocolAssert(NSCopying, string);
```

Conforms to protocol where waiting - Protocol and current NSString instance:

```objective-c
NSString *string = @"test";
Protocol *copyingProtocol = @protocol(NSCopying);
HRConformsToProtocolTypeAssert(copyingProtocol, string);
```
In case of HRKindOfClassAssert, arguments can be instance, Class type instance or class name(like NSString).

In case of HRConformsToProtocolAssert "waiting" argument must be protocol name(like NSCopying) and "current" argument can be instance, Class type instance or class name(like NSString).

In case of HRConformsToProtocolTypeAssert "waiting" argument must be Protocol type instance and "current" argument can be instance, Class type instance or class name(like NSString). 

## Requirements

Objective-C and iOS 7.0 or higher.

## Installation

HRAssert is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod "HRAssert"
```

## Author

Ivan Shevelev, ivan.shevelev@sibers.com

## License

HRAssert is available under the MIT license. See the LICENSE file for more info.

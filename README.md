![Logo](https://github.com/fewcents/fewcents-ios-sdk/blob/main/Images/fewcents-logo.png)
# Fewcents-iOS-SDK

Fewcents enables small payments for the creator economy. We allow digital publishers to unbundle and micro-monetize text, audio, or video formats in 50+ currencies.


## Manual Integration

### 1. Download SDK
The first step in integrating with your app is to [download the iOS SDK](https://github.com/fewcents/fewcents-ios-sdk/blob/main/Frameworks/Fewcents-iOS-SDK.xcframework.zip) itself.

### 2. Add the SDK to Your Project
After unzipping the SDK, you find `Fewcents-iOS-SDK.xcframework`. Then, click on the main `FewcentsSwiftSample` project file in Xcode. Select the `app` target and the `General` tab. Scroll down to the `Frameworks, Libraries and Embedded Content` section and drag and drop the `Fewcents-iOS-SDK.xcframework` into the section. See the below image as reference.

![ScreenShot-1](https://github.com/fewcents/fewcents-ios-sdk/blob/main/Images/screenshot-1.png)

Build the project. 
That’s it. The framework is added to our project.


### Fewcents SDK Initialization
#### In Swift
---- 
  In your `ViewController` file import the `Fewcents-iOS-SDK` 

 ```objc
 #import Fewcents-iOS-SDK
 ```
 
 Add the following in `ViewDidLoad` method of `ViewController` to initialize the SDK
 
```objc
let fewcents = Fewcents(accessKey: ACCESS_KEY,
                        category: CATEGORY,
                        logoUrl: LOGO_URL,
                        articleUrl: ARTICLE_URL,
                        publisherCustomerId: PUBLISHER_CUSTOMER_ID,
                        publisherDomain: PUBLISHER_DOMAIN)
```

```
Where 
  ACCESS_KEY            : created when publisher registers in the system and to be shared by fc team over email
  CATEGORY              : article category - to be populated by client
  LOGO_URL              : to be populated by client
  PUBLISHER_CUSTOMER_ID : client customer id (optional)
  PUBLISHER_DOMAIN.     : domain of the publisher
``` 

#### In Objective C
---- 
  In your `.m` file import the `Fewcents-iOS-SDK` swift header as follow

 ```objc
#import <Fewcents_iOS_SDK/Fewcents_iOS_SDK-Swift.h>
 ```
 
 Add the following in `ViewDidLoad` method of `ViewController` to initialize the SDK
 
```objc
Fewcents *fewcents = [[Fewcents alloc] initWithAccessKey : ACCESS_KEY
                                                category : CATEGORY
                                                 logoUrl : LOGO_URL
                                              articleUrl : LOGO_URL
                                     publisherCustomerId : PUBLISHER_CUSTOMER_ID
                                         publisherDomain : PUBLISHER_DOMAIN];
```

```
Where 
  ACCESS_KEY            : created when publisher registers in the system and to be shared by fc team over email
  CATEGORY              : article category - to be populated by client
  LOGO_URL              : to be populated by client
  PUBLISHER_CUSTOMER_ID : client customer id (optional)
  PUBLISHER_DOMAIN.     : domain of the publisher
``` 
 
Finally, the SDK is successfully integrated and initialized in the project, and ready to use.


### Usage

Add the following in the same `ViewController` to load the paywall

#### In Swift
----
```
//load default behaviour
fewcents.loadPaywall(in: self)

or

//load custom behaviour
fewcents.loadPaywall(in: self, content: contentView, position: .top)
```

```
Where 
  in            : ViewController of the contents
  content       : View of the contents
  position      : Position of the paywall over the content view (.top, .center or .bottom)
``` 

#### In Objective C
----
```
//load default behaviour
[fewcents loadPaywallIn: self];

or

//load custom behaviour
[fewcents loadPaywallIn: self content:[self contentView] position: PositionTop];
```

```
Where 
  in            : ViewController of the contents
  content       : View of the contents
  position      : Position of the paywall over the content view (PositionTop, PositionCenter or PositionBottom)
``` 

## Support
For any issues you face with the SDK and for any help with the integration contact us at `help@fewcents.co` or you can visit this repository's [Github issue tracker](https://github.com/fewcents/fewcents-ios-sdk/issues) for bug reports specific to our iOS SDK

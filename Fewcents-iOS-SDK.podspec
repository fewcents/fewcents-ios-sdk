
Pod::Spec.new do |spec|

 spec.name         = "Fewcents-iOS-SDK"
 spec.version      = "1.0.2"
 spec.summary      = "Fewcents SDK for iOS"
 spec.description  = <<-DESC
                    Few¢ents's pay-as-you-go micropayments module helps monetise your readers community better, targeting non-subscribers and infrequent visitors. You can expect higher returns without paying fixed costs (for our platform) as compared to subscription models and ad reliance.
                    DESC

 spec.homepage     = "https://www.fewcents.co"
 spec.documentation_url = 'https://github.com/fewcents/fewcents-ios-sdk'
 spec.license      = { :type => 'Commercial', :file => 'LICENSE' }
 spec.author       = { 'Ayon Chowdhury' => 'md.rajib.sarwar@gmail.com' }
 spec.platform     = :ios
 spec.ios.deployment_target = '9.0'

 spec.source       = {
                        :git => 'https://github.com/fewcents/fewcents-ios-sdk.git',
                        :tag => 'fewcents-ios-sdk-' + spec.version.to_s
                    }

 spec.ios.vendored_frameworks = 'Frameworks/Fewcents-iOS-SDK.xcframework'

 spec.requires_arc = true
 spec.frameworks = 'Foundation', 'UIKit', 'SystemConfiguration' , 'Security'
 
end
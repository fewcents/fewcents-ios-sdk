Pod::Spec.new do |s|
    s.name             = "Fewcents-iOS-SDK"
    s.version          = "1.1.6"
    s.summary          = "Fewcents SDK for iOS."
    s.description      = <<-DESC
                            Few¢ents's pay-as-you-go micropayments module helps monetise your readers community better, targeting non-subscribers and infrequent visitors. You can expect higher returns without paying fixed costs (for our platform) as compared to subscription models and ad reliance.
                    DESC
    s.homepage         = "https://www.fewcents.co"
    s.license          = { :type => "Commercial", :file => "LICENSE" }
    s.author           = { "Ayon Chowdhury" => "md.rajib.sarwar@gmail.com" }

    s.source           = { :git => "https://github.com/fewcents/fewcents-ios-sdk.git", :tag => "fewcents-ios-sdk-" + s.version.to_s }
    s.platform         = :ios
    s.requires_arc     = true
    
    s.ios.vendored_frameworks = 'Frameworks/Distribution/Fewcents-iOS-SDK.xcframework'
    s.preserve_paths = 'Frameworks/Distribution/Fewcents-iOS-SDK.xcframework'
    
end

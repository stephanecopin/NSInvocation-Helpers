Pod::Spec.new do |s|
  s.name             = "NSInvocationHelpers"
  s.version          = "1.0.2"
  s.summary          = "A category on NSInvocation to make its usage easier"
  s.homepage         = "https://github.com/stephanecopin/NSInvocation-Helpers"
  s.license          = 'MIT'
  s.author           = { "stephane-fueled" => "stephane@fueled.com" }
  s.source           = { :git => "https://github.com/stephanecopin/NSInvocation-Helpers.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'NSInvocationHelpers/NSInvocation+Helpers.{h,m}'

  s.frameworks = 'Foundation'
end

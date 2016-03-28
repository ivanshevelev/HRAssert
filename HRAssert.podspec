Pod::Spec.new do |s|
  s.name             = "HRAssert"
  s.version          = "1.1"
  s.summary          = "Custom assert defines."

  s.description      = "Custom assert defines. Check for isKindOfClass: and conformsProtocol:."

  s.homepage         = "https://github.com/ivanshevelev/HRAssert"
  s.license          = 'MIT'
  s.author           = { "Ivan Shevelev" => "ivan.shevelev@sibers.com" }
  s.source           = { :git => "https://github.com/ivanshevelev/HRAssert.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/antsy_ivan'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
  s.resource_bundles = {
    'HRAssert' => ['Pod/Assets/*.png']
  }

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'Foundation'
end

Pod::Spec.new do |s|
  s.name         = "RNAppMetadata"
  s.version      = "1.0.0"
  s.summary      = "RNAppMetadata"
  s.description  = "Get app metadata from Info.plist (iOS) or AndroidManifest.xml (android)"
  s.homepage     = "https://github.com/CubeSugar/react-native-app-metadata"
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/CubeSugar/react-native-app-metadata/releases.git", :tag => "v1.0.0" }
  s.source_files  = "RNAppMetadata/**/*.{h,m}"
  s.requires_arc = true
  s.dependency "React"

end

Pod::Spec.new do |s|
  s.name         = "RNAppMetadata"
  s.version      = "1.0.1"
  s.summary      = "RNAppMetadata"
  s.description  = "Get app metadata from Info.plist (iOS) or AndroidManifest.xml (android)"
  s.homepage     = "https://github.com/CubeSugar/react-native-app-metadata"
  s.license      = "MIT"
  s.author       = { "Wei Jian" => "wei.jian.coder+github@gmail.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/CubeSugar/react-native-app-metadata.git", :tag => "v1.0.1" }
  s.source_files  = "*.{h,m}"
  s.requires_arc = true
  s.dependency "React"
end

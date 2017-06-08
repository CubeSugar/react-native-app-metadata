
Pod::Spec.new do |s|
  s.name         = "RNAppMetadata"
  s.version      = "1.0.0"
  s.summary      = "RNAppMetadata"
  s.description  = <<-DESC
                  RNAppMetadata
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNAppMetadata.git", :tag => "master" }
  s.source_files  = "RNAppMetadata/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  
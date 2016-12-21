Pod::Spec.new do |s|
  s.name         = "swipekit"
  s.version      = "0.5.0"
  s.summary      = "Summary to come"
  s.description  = "Description to come"
  s.homepage     = "https://github.com/zhxnlai/ZLSwipeableViewSwift"
  s.screenshots  = ""
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Zhixuan Lai" => "zhxnlai@gmail.com" }
  s.social_media_url   = "http://twitter.com/ZhixuanLai"

  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/zhxnlai/ZLSwipeableViewSwift.git", :tag => "0.5.0" }
  s.source_files  = "ZLSwipeableViewSwift/*.swift"

  s.framework  = "UIKit"

  s.requires_arc = true
end

Pod::Spec.new do |s|
  s.name         = "SwipeKit"
  s.version      = "0.6.0"
  s.summary      = "Summary to come"
  s.description  = "Description to come"
  s.homepage     = "https://github.com/zhxnlai/ZLSwipeableViewSwift"
  s.screenshots  = ""
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "WonderKiln" => "contact@wonderkiln.com" }

  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/wonderkiln/SwipeKit.git" }
  s.source_files  = "swipkit/*.swift"

  s.framework  = "UIKit"

  s.requires_arc = true
end

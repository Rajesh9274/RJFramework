


Pod::Spec.new do |s|
 
  s.name         = "RJFramework"
  s.version      = "1.0.0"
  s.summary      = "This is such a RJFramework"
  s.description  = "This is some super RJFramework that was s created by Bluewhaleapps."
  s.homepage     = "https://github.com/Rajesh9274/RJFramework.git"
  s.license      = "MIT"
  s.author             = { "Bluewhaleapps" => "rajesh.vekariya@bluereeftech.com" }
  s.platform     = :ios, "12.0"
  s.requires_arc = true
  s.source       = { :git => "https://github.com/Rajesh9274/RJFramework.git", :tag => "1.0.0" }
  s.ios.deployment_target = '12.0'
  s.frameworks = 'UIKit', 'Photos', 'MessageUI', 'Foundation'
  s.source_files = "RJFramework/**/*.{swift}"
  s.exclude_files = "RJFramework/RJFramework/*.plist"
  s.resources = "RJFramework/**/*.{png,jpeg,jpg,storyboard,xib,xcassets}"
  s.swift_version = "5.0"

end

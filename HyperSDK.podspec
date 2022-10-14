
Pod::Spec.new do |s|
  s.name         = "HyperSDK"
  s.version      = "2.1.16.1"
  s.summary      = "Hyper visualization and payment processing."
  s.description  = <<-DESC
                   Create payment experiences for user to improve coversion and success rate.
                   DESC

  s.homepage     = 'https://juspay.in/'
  s.license      = { :type => "LGPL", :file => "LICENSE" }
  s.author       = { "Sachin Sharma" => "sachin.sharma@juspay.in" }

  s.platform     = :ios, "11.0"
  s.resources = 'Fuse.rb'
  s.resources = 'DA.rb'
 
  s.source       = { :http => "https://balaganesh.in/files/HyperSDK.zip"}

  s.dependency "JuspaySafeBrowser", "0.1.75"
  s.dependency 'Salvator', '1.0.2'
  
  s.ios.vendored_frameworks = "HyperSDK.xcframework"
  s.prepare_command = "ruby DA.rb"
end

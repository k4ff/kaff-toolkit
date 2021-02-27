Pod::Spec.new do |spec|

  spec.name         = "KaffToolkit"
  spec.version      = "1.0.0"
  spec.summary      = "Useful Toolkit for iOS Development"

  spec.description  = <<-DESC
  Useful Toolkit for iOS Development. Available via Cocoapods.
                   DESC

  spec.homepage     = "https://github.com/k4ff/kaff-toolkit"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "k4ff" => "main.kaff@gmail.com" }

  spec.ios.deployment_target = "13.0"

  spec.source       = { :git => "https://github.com/k4ff/kaff-toolkit.git", :tag => "#{spec.version}" }
  spec.source_files  = "KaffToolkit/**/*.{h,m}"

end

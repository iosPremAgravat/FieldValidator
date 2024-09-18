
Pod::Spec.new do |spec|

  spec.name         = "FieldValidator"
  spec.version      = "1.0.0"
  spec.summary      = "This is sample summary of FieldValidator"
  spec.description  = "This is sample discription of FieldValidator"
  spec.homepage     = "https://github.com/iosPremAgravat/FieldValidator"
  spec.license      = "MIT"
  spec.author             = { "iosPremAgravat" => "prem.ios.bt@gmail.com" }
  spec.platform     = :ios, "15.0"
  spec.source       = { :git => "https://github.com/iosPremAgravat/FieldValidator.git", :tag => spec.version.to_s }
  spec.source_files  = "FieldValidator/**/*.{swift}"
  spec.swift_versions = "5.0"
end

Pod::Spec.new do |s|
  framework_filename = "BlocksCore.xcframework"

  s.name = "BlocksCore"
  s.version = '1.0.0'
  s.summary = 'Blocks Core iOS SDK'
  s.description = <<-DESC
    Blocks official SDK
                   DESC
  s.homepage = 'https://getblocks.com'
  s.license = { :type => 'MIT', :file => 'LICENSE' }
  s.author = { "Marvin Zhan" => "marvin@elements.io" }
  s.platform = :ios
  s.ios.deployment_target = "11.0"
  s.swift_version = '5.1'
  s.source = { :git => "https://github.com/elementspay/blocks-core-sdk-distribution.git", :tag => "#{s.version}" }
  s.frameworks = 'Foundation'
  s.requires_arc = true
  s.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64', 'SWIFT_SUPPRESS_WARNINGS' => 'YES' }
  s.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  s.vendored_frameworks = 'BlocksCore.xcframework'
end

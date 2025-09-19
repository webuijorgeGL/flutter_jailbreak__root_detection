#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'flutter_jailbreak__root_detection'
  s.version          = '1.0.0'
  s.summary          = 'Flutter jailbreak and root detection plugin'
  s.description      = <<-DESC
Flutter jailbreak and root detection plugin
                       DESC
  s.homepage         = 'https://github.com/webuijorgeGL/flutter_jailbreak__root_detection'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'George' => 'runaway13819@gmail.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'
  s.dependency 'IOSSecuritySuite'
  

  s.ios.deployment_target = '10.0'
end


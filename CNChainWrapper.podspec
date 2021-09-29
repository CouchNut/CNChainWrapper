#
# Be sure to run `pod lib lint CNChainWrapper.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CNChainWrapper'
  s.version          = '1.0.1'
  s.summary          = 'Swift implements chain programming elegantly.'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.homepage         = 'https://github.com/CouchNut/CNChainWrapper'
  s.author           = { 'CouchNut' => 'yit_copper@163.com' }
  s.ios.deployment_target = '12.0'
  s.swift_version    = '5.0'
  s.source           = { :git => 'https://github.com/CouchNut/CNChainWrapper.git', :tag => s.version.to_s }
  s.source_files     = 'Sources/Classes/**/*'
  s.requires_arc     = true
end

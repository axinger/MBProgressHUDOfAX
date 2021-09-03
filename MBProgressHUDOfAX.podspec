#
# Be sure to run `pod lib lint MBProgressHUDOfAX.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MBProgressHUDOfAX'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MBProgressHUDOfAX.'
  
  # This description is used to generate tags and improve search results.
  #   * Think: What does it do? Why did you write it? What is the focus?
  #   * Try to keep it short, snappy and to the point.
  #   * Write the description between the DESC delimiters below.
  #   * Finally, don't worry about the indent, CocoaPods strips it!
  
  s.description      = <<-DESC
  MBProgressHUD 封装到UIView分类中
  DESC
  
  s.homepage         = 'https://github.com/axinger/MBProgressHUDOfAX'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'axinger' => 'axinger@outlook.com' }
  s.source           = { :git => 'https://github.com/axinger/MBProgressHUDOfAX.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
  
  s.ios.deployment_target = '9.0'
  
  s.public_header_files = 'MBProgressHUDOfAX/Classes/**/*.h'
  s.source_files = 'MBProgressHUDOfAX/Classes/**/*'
  
  s.resource_bundles = {
    'MBProgressHUDOfAX' => ['MBProgressHUDOfAX/Assets/*']
  }
  
  s.frameworks = 'UIKit'
  s.dependency 'MBProgressHUD', '~> 1.2.0'
end

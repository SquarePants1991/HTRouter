#
# Be sure to run `pod lib lint HTRouter.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'HTRouter'
  s.version          = '0.1.0'
  s.summary          = 'A short description of HTRouter.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/tomcat2088/HTRouter'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tomcat2088' => 'yang1.wang@baidao.com' }
  s.source           = { :git => 'https://github.com/tomcat2088/HTRouter.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'HTRouter/Classes/**/*'
  
  # s.resource_bundles = {
  #   'HTRouter' => ['HTRouter/Assets/*.png']
  # }

  s.dependency 'MZFormSheetPresentationController', '~> 2.4.2'
end

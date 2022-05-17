#
# Be sure to run `pod lib lint ZDSCommonUIModule.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ZDSCommonUIModule' # 名称
  s.version          = '0.0.3' # 版本号
  s.summary          = 'ZDSCommonUIModule 库' # 简介

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  # 项目主页地址：github
  s.homepage         = 'https://github.com/InSeekFame/ZDSCommonUIModule'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  # 许可证
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  # 作者
  s.author           = { 'InSeekFame' => 'cl18083620407@163.com' }
  # 项目地址
  s.source           = { :git => 'https://github.com/InSeekFame/ZDSCommonUIModule.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  # 源文件的配置路径
  s.source_files = 'ZDSCommonUIModule/Classes/**/*'
  
  # 资源文件的配置路径
   s.resource_bundles = {
     'ZDSCommonUIModule' => ['ZDSCommonUIModule/Assets/*']
   }

  # 源码头文件的配置路径
  # s.public_header_files = 'Pod/Classes/**/*.h'
  # 系统框架依赖库
  # s.frameworks = 'UIKit', 'MapKit'
  # 第三方框架依赖库
  # s.dependency 'AFNetworking', '~> 2.3'
end

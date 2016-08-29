#
# Be sure to run `pod lib lint SweetAlert.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'SweetAlert'
  s.version          = '0.1.0'
  s.summary          = 'Beautiful Animated custom Alert View.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Beautiful Animated custom Alert View inspired from javascript library [SweetAlert](http://tristanedwards.me/sweetalert).
Written in Swift this SweetAlertView can be used in Swift and Objective-C projects. SweetAlertView provides live intutive experience to user actions.It can be used in place of `UIAlertView` and `UIAlertController`
                       DESC

  s.homepage         = 'http://tristanedwards.me/sweetalert'
  s.screenshots      = 'https://github.com/codestergit/SweetAlert-iOS/blob/master/SweetAlertiOS.gif'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = {'codestergit' => 'https://github.com/codestergit/SweetAlert-iOS'}
  s.source           = { :git => 'https://github.com/codestergit/SweetAlert.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'SweetAlert/Classes/**/*'
  
  # s.resource_bundles = {
  #   'SweetAlert' => ['SweetAlert/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'UIKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  s.requires_arc = 'true'
end

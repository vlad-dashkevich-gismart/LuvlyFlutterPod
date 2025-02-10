#
# Be sure to run `pod lib lint LuvlyFlutterPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'LuvlyFlutterPod'
  s.version          = '1.0.6'
  s.summary          = 'A short description of LuvlyFlutterPod.'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/Vladislav Dashkevich/LuvlyFlutterPod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Vladislav Dashkevich' => 'vladislav.dashkevich@gismart.com' }
  s.source                = { :git => 'git@github.com:vlad-dashkevich-gismart/LuvlyFlutterPod.git' }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'

  s.source_files = 'LuvlyFlutterPod/Classes/**/*'
  s.vendored_frameworks = 'ios_frameworks/Release/*.xcframework'
  
  # s.resource_bundles = {
  #   'LuvlyFlutterPod' => ['LuvlyFlutterPod/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
end

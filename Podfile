# Uncomment the next line to define a global platform for your project
# platform :ios, '12.0'

source 'git@github.com:gismart/CombineCocoa_iOS.git'

target 'Runner' do
  use_frameworks!

  pod 'Eureka'
  pod 'Flutter'
end

post_install do |installer|
  flutter_post_install(installer) if defined?(flutter_post_install)
end


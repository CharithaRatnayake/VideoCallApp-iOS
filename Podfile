# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'Jitsi-Sample' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for Jitsi SDK
  pod 'JitsiMeetSDK', '2.9'
  # Pods for prevent issue of keyboard sliding up and cover UITextField
  pod 'IQKeyboardManager'

end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['ENABLE_BITCODE'] = 'NO'
      # Bitcode is not supported, so turn it off (Build Settings -> Build Options -> Enable Bitcode as NO)
    end
  end
end
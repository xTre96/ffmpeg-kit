Pod::Spec.new do |s|
  s.name             = 'ffmpeg_kit_flutter'
  s.version          = '6.0.3'
  s.summary          = 'FFmpeg Kit for Flutter'
  s.description      = 'A Flutter plugin for running FFmpeg and FFprobe commands.'
  s.homepage         = 'https://github.com/arthenica/ffmpeg-kit'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'ARTHENICA' => 'open-source@arthenica.com' }

  s.platform            = :ios
  s.requires_arc        = true
  s.static_framework    = true

  # ✅ Valid ZIP file for ffmpeg-kit 6.0 (not LTS)
  s.source = { :http => 'https://github.com/arthenica/ffmpeg-kit/releases/download/v6.0/ffmpeg-kit-full-6.0-ios-xcframework.zip' }
  s.source_files        = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'

  # ✅ Use 'https' instead of broken 'https-lts'
  s.default_subspec     = 'full'

  s.dependency          'Flutter'
  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386'
  }

  s.subspec 'min' do |ss|
    ss.source_files        = 'Classes/**/*'
    ss.public_header_files = 'Classes/**/*.h'
    ss.dependency 'ffmpeg-kit-ios-min', "6.0"
    ss.ios.deployment_target = '14.0'
  end

  s.subspec 'min-gpl' do |ss|
    ss.source_files        = 'Classes/**/*'
    ss.public_header_files = 'Classes/**/*.h'
    ss.dependency 'ffmpeg-kit-ios-min-gpl', "6.0"
    ss.ios.deployment_target = '14.0'
  end

  s.subspec 'audio' do |ss|
    ss.source_files        = 'Classes/**/*'
    ss.public_header_files = 'Classes/**/*.h'
    ss.dependency 'ffmpeg-kit-ios-audio', "6.0"
    ss.ios.deployment_target = '14.0'
  end

  s.subspec 'video' do |ss|
    ss.source_files        = 'Classes/**/*'
    ss.public_header_files = 'Classes/**/*.h'
    ss.dependency 'ffmpeg-kit-ios-video', "6.0"
    ss.ios.deployment_target = '14.0'
  end

  s.subspec 'full' do |ss|
    ss.source_files        = 'Classes/**/*'
    ss.public_header_files = 'Classes/**/*.h'
    ss.dependency 'ffmpeg-kit-ios-full', "6.0"
    ss.ios.deployment_target = '14.0'
  end

  s.subspec 'full-gpl' do |ss|
    ss.source_files        = 'Classes/**/*'
    ss.public_header_files = 'Classes/**/*.h'
    ss.dependency 'ffmpeg-kit-ios-full-gpl', "6.0"
    ss.ios.deployment_target = '14.0'
  end
end

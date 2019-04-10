#
#  Be sure to run `pod spec lint AmrWavVoiceConvert.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|

  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  These will help people to find your library, and whilst it
  #  can feel like a chore to fill in it's definitely to your advantage. The
  #  summary should be tweet-length, and the description more in depth.
  #

  s.name         = "AmrWavVoiceConvert"
  s.version      = "1.0.1"
  s.summary      = "iOS音频文件转换"
  s.homepage     = "https://github.com/hbwangcaihua/AmrWavVoiceConvert"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.license      = "MIT"


  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.author             = { "hbwangcaihua" => "hbwangcaihua@163.com" }

  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.platform     = :ios, "6.0"

  #  When using multiple platforms
  # s.ios.deployment_target = "8.4"
  # s.osx.deployment_target = "10.10.4"
  # s.watchos.deployment_target = "1.0.1"


  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.source       = { :git => "https://github.com/hbwangcaihua/AmrWavVoiceConvert.git",:tag => s.version.to_s}


  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.subspec 'AmrWavVoiceConvert' do |AmrWavVoiceConvert|
      AmrWavVoiceConvert.source_files = 'AmrWavVoiceConvert/VoiceConvert/**/*'
      AmrWavVoiceConvert.public_header_files = 'AmrWavVoiceConvert/VoiceConvert/**/*.h'
  end

  s.subspec 'amrwapper' do |amrwapper|
      amrwapper.source_files = 'AmrWavVoiceConvert/amrwapper/**/*'
      amrwapper.public_header_files = 'AmrWavVoiceConvert/amrwapper/**/*.h'
  end

  s.subspec 'opencore-amrnb' do |opencore_amrnb|
      opencore_amrnb.source_files = 'AmrWavVoiceConvert/opencore-amrnb/**/*'
      opencore_amrnb.public_header_files = 'AmrWavVoiceConvert/opencore-amrnb/**/*.h'
  end

  s.subspec 'opencore-amrwb' do |opencore_amrwb|
      opencore_amrwb.source_files = 'AmrWavVoiceConvert/opencore-amrwb/**/*'
      opencore_amrwb.public_header_files = 'AmrWavVoiceConvert/opencore-amrwb/**/*.h'
  end

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.frameworks = "Foundation"
  s.vendored_libraries = ['AmrWavVoiceConvert/lib/libopencore-amrnb.a',
                          'AmrWavVoiceConvert/lib/libopencore-amrwb.a']


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  s.requires_arc = true
  
end
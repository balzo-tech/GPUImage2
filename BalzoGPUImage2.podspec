Pod::Spec.new do |s|
  s.name     = 'BalzoGPUImage2'
  s.version  = '0.2.1'
  s.license  = 'BSD'
  s.summary  = 'An open source iOS framework for GPU-based image and video processing.'
  s.homepage = 'https://github.com/balzo-tech/GPUImage2'
  s.author   = { 'Giuseppe Lapenta' => 'giuseppe@balzo.eu' }

  s.source   = { :git => 'https://github.com/balzo-tech/GPUImage2.git', :tag => s.version.to_s }

  s.swift_version = "4.0"

  s.source_files = 'framework/Source/**/*.{swift}'
  s.resources = 'framework/Source/Operations/Shaders/*.{fsh}'
  s.requires_arc = true
  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES', 'OTHER_SWIFT_FLAGS' => "$(inherited) -DGLES"}

  s.ios.deployment_target = '11.0'
  s.ios.exclude_files = 'framework/Source/Mac', 'framework/Source/Linux', 'framework/Source/Operations/Shaders/ConvertedShaders_GL.swift'
  s.frameworks   = ['OpenGLES', 'CoreMedia', 'QuartzCore', 'AVFoundation']

end
Pod::Spec.new do |spec|
  spec.name             = 'CocoaPodsLib3'
  spec.version          = '1.0.0'
  spec.summary          = 'CocoaPodsLib3 概要描述'
  spec.description      = 'CocoaPodsLib3 描述'
  spec.homepage         = 'http://github/Admit.git'
  spec.license          = "MIT"
  spec.author           = { "wangzexin" => "1905721262@qq.com" }

  spec.ios.deployment_target = '9.0'

  spec.source           = { :git => '', :tag => spec.version.to_s }
  spec.requires_arc     = true # 开启自动引用计数

  spec.frameworks       = "Foundation" # 声明依赖的系统库

  spec.source_files  = "CocoaPodsLib3/**/*.{h,m,mm}" # 模块的源代码文件

  # spec.resources = 'xxx/Resource.bundle','xxx.plist' # 模块的资源文件
  
  # spec.dependency 'Masonry' # 模块依赖的三方库

end
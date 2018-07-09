#
#  Be sure to run `pod spec lint XiaoDeKit-Swift.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#
#  If you want to see original podspec, Please see the back file XiaoDeKit-Swift.podspec_originbak.

Pod::Spec.new do |s|


  # ―――――――――― Spec Metadata  ―――――――――― #
  s.name         = "XiaoDeKit-Swift" # 项目名称
  s.version      = "0.0.2"        # 版本号 与 你仓库的 标签号 对应
  s.summary      = "SiwftKit written by TangXiaoDe" # 项目简介
  s.module_name   = 'XiaoDeKit'


  # ―――――――――― Project Description  ―――――――――― #
  s.description  = <<-DESC 
                    SwiftKit written by TangXiaoDe.
                   DESC
  s.homepage     = "https://github.com/TangXiaoDe/XiaoDeKit-Swift" # 项目主页
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"


  # ―――――――――― Spec License  ―――――――――― #
  s.license      = "MIT"          # 开源证书
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }


  # ―――――――――― Author Metadata  ―――――――――― #
  s.author             = { "TangXiaoDe" => "xiaodehappy@foxmail.com" } # 作者信息
  # s.social_media_url   = "http://tangxiaode.github.io" # 个人主页


  # ―――――――――― Platform Specifics ―――――――――― #
  s.platform     = :ios, "9.0" #平台及支持的最低版本


  # ―――――――――― Source  ―――――――――― #
  s.source       = { :git => "https://github.com/TangXiaoDe/XiaoDeKit-Swift.git", :tag => "#{s.version}" } #你的仓库地址，不能用SSH地址
  s.source_files = "XiaoDeKit-Swift/**/*.{h,m,swift}"
  
  # s.source_files = "Classes/**/*.{h,m,swift}" # 你代码的位置， XiaoDeKit-Swift/*.{swift,h,m} 表示 XiaoDeKit-Swift 文件夹下所有的.swift、.h和.m文件
  # s.source_files = "Classes", "**/*.{h,m,swift}" # 你代码的位置， XiaoDeKit-Swift/*.{swift,h,m} 表示 XiaoDeKit-Swift 文件夹下所有的.swift、.h和.m文件
  # s.source_files  = "Classes", "XiaoDeKit-Swift/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"
  # s.public_header_files = "Classes/**/*.h"


  # ―――――――――― Resources  ―――――――――― #
  # s.resource  = "icon.png"
  # s.resources = "Resources/*.png"
  # s.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ―――――――――― Project Linking ―――――――――― #
  s.frameworks   = "UIKit", "Foundation" #支持的框架
  s.swift_version = '3.2'
  
  # s.framework  = "SomeFramework"
  # s.frameworks = "SomeFramework", "AnotherFramework"
  # s.library   = "iconv"
  # s.libraries = "iconv", "xml2"


  # ―――――――――― Project Settings ―――――――――― #
  # s.requires_arc = true # 是否启用ARC
  # s.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # s.dependency "JSONKit", "~> 1.4"
  # s.dependency = "SnapKit" # 依赖库

  
  



end

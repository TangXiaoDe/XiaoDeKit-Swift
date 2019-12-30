Pod::Spec.new do |spec|

  spec.name = 'XiaoDeKit-Swift'
  spec.module_name = 'XiaoDeKit'
  spec.version = '0.0.10'
  spec.summary = 'the kit for common packaging written by TangXiaoDe in swift'

  spec.license = 'MIT'
  spec.homepage = 'https://github.com/TangXiaoDe/XiaoDeKit-Swift.git'
  spec.authors = { 'TangXiaoDe' => 'xiaodehappy@foxmail.com' }
  spec.source = { :git => 'https://github.com/TangXiaoDe/XiaoDeKit-Swift.git', :tag => '0.0.10' }

  spec.platform = :ios, "9.0"
  spec.swift_version = '5.0'

  
  spec.subspec "Extension" do |extension|
    extension.source_files = 'XiaoDeKit/Source/Extension/Foundation+Extension/**/*', 
    'XiaoDeKit/Source/Extension/UIKit+Extension/**/*'
  end
  spec.subspec "Constant" do |constant|
    constant.source_files = 'XiaoDeKit/Source/Constant/**/*'
    constant.dependency 'XiaoDeKit-Swift/Extension'
  end
  spec.subspec "Common" do |common|
    common.source_files = 'XiaoDeKit/Source/Common/View/**/*'
    common.dependency 'XiaoDeKit-Swift/Extension'
    common.dependency 'XiaoDeKit-Swift/Constant'
  end
  spec.subspec "XDPackageTimer" do |timer|
    timer.source_files = 'XiaoDeKit/Source/XDPackageTimer/**/*'
  end
  spec.subspec "XDNestView" do |nestView|
    nestView.source_files = 'XiaoDeKit/Source/XDNestView/**/*'
  end
  spec.subspec "Helper" do |helper|
    helper.source_files = 'XiaoDeKit/Source/Helper/**/*'
    helper.dependency 'XiaoDeKit-Swift/Extension'
  end
  spec.subspec "XDWeb" do |web|
    web.source_files = 'XiaoDeKit/Source/XDWeb/**/*'
  end
  spec.subspec "Template" do |template|
    template.source_files = 'XiaoDeKit/Source/Template/Controller/**/*',
    'XiaoDeKit/Source/Template/View/**/*',
    'XiaoDeKit/Source/Template/Vender/**/*',
    'XiaoDeKit/Source/Template/Other/**/*'
    template.dependency 'XiaoDeKit-Swift/Constant'
  end


end
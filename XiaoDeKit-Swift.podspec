Pod::Spec.new do |spec|

  spec.name = 'XiaoDeKit-Swift'
  spec.module_name   = 'XiaoDeKit'
  spec.version = '0.0.11'
  spec.summary = 'the kit for package written by TangXiaoDe in swift'

  spec.license = 'MIT'
  spec.homepage = 'https://github.com/TangXiaoDe/XiaoDeKit-Swift.git'
  spec.authors = { 'TangXiaoDe' => 'xiaodehappy@foxmail.com' }
  spec.source = { :git => 'https://github.com/TangXiaoDe/XiaoDeKit-Swift.git', :tag => '#{spec.version}' }

  spec.platform     = :ios, "9.0"

  spec.subspec "Extension" do |extension|
    extension.source_files = 'XiaoDeKit/Classes/Extension/Foundation+Extension/**/*', 'XiaoDeKit/Classes/Extension/UIKit+Extension/**/*'
  end
  spec.subspec "XDPackageTimer" do |timer|
    timer.source_files = 'XiaoDeKit/Classes/XDPackageTimer/**/*'
  end


  spec.swift_version = '5.0'


end
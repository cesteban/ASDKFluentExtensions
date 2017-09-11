Pod::Spec.new do |spec|
  spec.name         = 'ASDKFluentExtensions'
  spec.version      = '0.7'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/cesteban/ASDKFluentExtensions'
  spec.authors      = { 'Cesar Estebanez' => 'cestebanez@gmail.com' }
  spec.summary      = 'Extend AsyncDisplayKit with a fluent layout API'
  spec.source       = { :git => 'https://github.com/cesteban/ASDKFluentExtensions.git', :tag => spec.version.to_s }

  spec.ios.deployment_target = '8.0'

  spec.public_header_files  = 'Source/*.h'
  spec.source_files = 'Source/*.{h,m}'
  spec.dependency 'Texture', '~> 2.4'

end

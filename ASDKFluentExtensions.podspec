Pod::Spec.new do |spec|
  spec.name         = 'ASDKFluentExtensions'
  spec.version      = '0.1'
  spec.license      = { :type => 'BSD' }
  spec.homepage     = 'https://bitbucket.org/cestebanez/asdkfluentextensions'
  spec.authors      = { 'Cesar Estebanez' => 'cestebanez@gmail.com' }
  spec.summary      = 'Extends AsyncDisplayKit with a fluent API'
  spec.source       = { :git => 'https://cestebanez@bitbucket.org/cestebanez/asdkfluentextensions.git', :tag => spec.version.to_s }

  spec.ios.deployment_target = '8.0'

  spec.public_header_files  = 'Source/*.h'
  spec.source_files = 'Source/*.{h,m}'
  spec.dependency 'AsyncDisplayKit', '~> 2.2'

end

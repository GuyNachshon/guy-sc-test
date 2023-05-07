Pod::Spec.new do |s|
  s.name             = 'guy-sc-test'
  s.version          = '7.0.0'
  s.summary          = 'Used for research purposes. DO NOT USE!'

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/GuyNachshon/guy-sc-test.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '58976716' => 'guy.na8@gmail.com' }
  s.source           = { :git => 'https://github.com/GuyNachshon/guy-sc-test.git', :tag => s.version.to_s }

  s.platform = :osx
  s.osx.deployment_target = "13.1.99"

  s.source_files = 'guy-sc-test/*'

end

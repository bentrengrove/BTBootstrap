#
# Be sure to run `pod lib lint KZBootstrap.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "BTBootstrap"
  s.version          = "0.1.0"
  s.summary          = "iOS project bootstrap aimed at high quality coding."
  s.description      = <<-DESC
                       Project bootstrap that provides automatic icon versioning, todo -> warning conversion`, warnings while files become too long, build numbering, environment switching/validation and much more. Originally created by Krzysztof Zablocki (krzysztof.zablocki@me.com), forked for modification to suit own style.
                       DESC
  s.homepage         = "https://github.com/bentrengrove/BTBootstrap"
  s.license          = 'MIT'
  s.author           = { "Ben Trengrove" => "ben@nybbles.com.au" }
  s.source           = { :git => "git@github.com:bentrengrove/BTBootstrap.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/bentrengrove'

  s.platform     = :ios, '7.0'
  s.requires_arc = true

  s.resources = ['Pod/Assets/Scripts/*']

  s.public_header_files = 'Pod/Classes/**/*.h'
  s.requires_arc = true

  s.default_subspec = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files = 'Pod/Classes/Core'
    ss.frameworks = 'Foundation'
    ss.dependency 'KZAsserts', '~> 1.0'
  end

  s.subspec 'Debug' do |ss|
    ss.source_files = 'Pod/Classes/Debug'
    ss.dependency "RSSwizzle"
    ss.dependency 'KZAsserts', '~> 1.0'
  end

  s.subspec 'Logging' do |ss|
    ss.source_files = 'Pod/Classes/Logging'
    ss.dependency "CocoaLumberjack"
  end

end

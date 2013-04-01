Pod::Spec.new do |s|
  s.name     = 'KANibHelper'
  s.version  = '0.1'
  s.platform = :ios
  s.license  = 'MIT'
  s.summary  = 'Automatic Nib management for 3.5 and 4 inches screens'
  s.homepage = 'https://github.com/kirualex/KANibHelper'
  s.author   = { 'Alexis Creuzot' => 'alexis.creuzot@gmail.com' }
  s.source   = { :git => 'https://github.com/kirualex/KANibHelper'}

  s.description = 'KANibHelper by kirualex.'

  s.source_files = 'KANibHelper/*.{h,m}'
  s.clean_paths  = 'Demo'
  s.framework    = 'Foundation', 'UIKit'
end
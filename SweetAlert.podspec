Pod::Spec.new do |s|
  s.name         = "SweetAlert"
  s.version      = "0.1.0"
  s.summary      = "Sweet alert fork by Josue Sierra. Includes loading alerts."
  s.homepage     = "https://github.com/JosueSierra12/SweetAlert-iOS"
  s.license      = 'MIT'
  s.author       = {'JosueSierra12' => 'https://github.com/JosueSierra12/SweetAlert-iOS'}
  s.source       = { :git => 'https://github.com/JosueSierra12/SweetAlert-iOS.git',  :tag => "#{s.version}"}
  s.ios.deployment_target = '8.0'
  s.source_files = 'SweetAlert/*.swift'
  s.requires_arc = 'true'
end

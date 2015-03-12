$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'vpn/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'vpn'
  s.version     = Vpn::VERSION
  s.authors     = ['Jitang Zheng']
  s.email       = ['jitang.zheng@gmail.com']
  s.homepage    = 'https://github.com/itpkg/vpn'
  s.summary     = 'OpenVPN user manage'
  s.description = 'For openvpn+mysql user manage'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'LICENSE', 'Rakefile', 'README.md']

  s.add_dependency 'rails', '~> 4.2.0'

  s.add_development_dependency 'mysql2'
end

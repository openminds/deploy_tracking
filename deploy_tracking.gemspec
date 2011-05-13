# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'deploy_tracking/version'

Gem::Specification.new do |s|
  s.name = 'deploy_tracking'
  s.version = DeployTracking::VERSION
  s.platform = Gem::Platform::RUBY
  s.authors = ['Jan De Poorter', 'Joren De Groof', 'Jeroen Jacobs']
  s.email = 'devel@openminds.be'
  s.homepage = 'http://openminds.be'
  s.summary = 'Tracking capistrano deploys in a deploy log file in the repository'
  s.description = 'Tracking capistrano deploys in a deploy log file in the repository'

  s.files = Dir['lib/**/*', 'README.rdoc']
  s.require_paths = ['lib']

  s.extra_rdoc_files = ['README.rdoc']
  s.rdoc_options = ['--charset=UTF-8']

  s.add_dependency 'capistrano', '~> 2.5.21'
end

# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{deploy_tracking}
  s.version = "0.3.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jan De Poorter - Openminds"]
  s.date = %q{2010-08-02}
  s.email = %q{jan@openminds.be}
  s.files = ["lib/deploy_tracking.rb", "lib/track_deploy.rb"]
  s.has_rdoc = false
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{Keep a deploy log file}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end

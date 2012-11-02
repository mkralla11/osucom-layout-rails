# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "osucom_layout_rails/version"

Gem::Specification.new do |s|
  s.name        = "osucom_layout_rails"
  s.version     = OsucomLayoutRails::VERSION
  s.authors     = ["Paul Cook"]
  s.email       = ["paul.cook@osumc.edu"]
  s.homepage    = ""
  s.summary     = %q{OSU College of Medicine Rails Layout}
  s.description = %q{OSU College of Medicine layout translated into a responsive design and packaged into a rails gem for use as a layout for rails project.}

  s.rubyforge_project = "osucom_layout_rails"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
  s.add_dependency("railties", "~> 3.2")
  #s.add_dependency "rake"
  #s.add_dependency 'compass-rails'
  s.add_dependency 'anjlab-bootstrap-rails', '>= 2.1'
  s.add_dependency 'font-awesome-sass-rails'
end

# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "model_un/version"

Gem::Specification.new do |s|
  s.name        = "model_un"
  s.version     = ModelUN::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Uh Huh Yeah"]
  s.email       = ["david@uhhuhyeah.com"]
  s.homepage    = "https://github.com/uhhuhyeah/model_un"
  s.summary     = %q{Quick and easy country and US State abbreviations}
  s.description = %q{Converts US State names and (most) country names to their normally accepted abbreviations and back.}

  s.add_development_dependency "rspec"
  s.rubyforge_project = "model_un"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

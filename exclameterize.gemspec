# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "exclameterize/version"

Gem::Specification.new do |s|
  s.name        = "exclameterize"
  s.version     = Exclameterize::VERSION
  s.authors     = ["Jon Moses"]
  s.email       = ["jon@burningbush.us"]
  s.homepage    = ""
  s.summary     = %q{Exclameterize strings like alias_method_chain expects}
  s.description = %q{Also de-exclameterize them}

  s.rubyforge_project = "exclameterize"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

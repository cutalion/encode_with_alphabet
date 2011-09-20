# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "encode_with_alphabet/version"

Gem::Specification.new do |s|
  s.name        = "encode_with_alphabet"
  s.version     = EncodeWithAlphabet::VERSION
  s.authors     = ["Alexander Glushkov"]
  s.email       = ["cutalion@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Encode integers with provided alphabet}
  s.description = %q{Allows you to encode any integers with any alphabet}

  s.rubyforge_project = "encode_with_alphabet"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency  "rspec", "~> 2.0"
end

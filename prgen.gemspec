# coding: utf-8

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "prgen/version"

Gem::Specification.new do |spec|
  spec.name          = "prgen"
  spec.version       = PRGen::VERSION
  spec.authors       = ["Tahmid Shakil"]
  spec.email         = ["at.shakil.92@gmail.com"]

  spec.summary       = "PR Generator"
  spec.description   = "A CLI utility to accompany pull request submission"
  spec.homepage      = "https://github.com/at-shakil/prgen"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.required_ruby_version = [">= 2.4.0"]
  spec.rdoc_options = %w[-t PRGen -m README.md -N --markup markdown]

  spec.add_dependency "thor", "~> 0.20"
  spec.add_dependency "clipboard", "~> 1.1"

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "simplecov", "~> 0.16"
  spec.add_development_dependency "pry", "~> 0.11"

  if ENV["TRAVIS"]
    spec.add_development_dependency "codeclimate-test-reporter", "~> 1.0.8"
  end
end

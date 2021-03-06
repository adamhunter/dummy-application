# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "dummy-application"
  spec.version       = "1.1.2"
  spec.authors       = ["Adam Hunter", "Rebecca Hunter"]
  spec.email         = ["adamhunter@me.com", "hrmrebecca@gmail.com"]
  spec.summary       = %q[Provide a base Rails application for usage in testing rubygems]
  spec.homepage      = "https://github.com/adamhunter/dummy-application"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "rails",                   ">= 3.0"
  spec.add_development_dependency "bundler",     "~> 1.6"
  spec.add_development_dependency "rspec-rails", "~> 2.14.2"
  spec.add_development_dependency "rake"
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'minibank/version'

Gem::Specification.new do |spec|
  spec.name          = "minibank"
  spec.version       = Minibank::VERSION
  spec.authors       = ["Piotr Macuk"]
  spec.email         = ["piotr@macuk.pl"]
  spec.description   = %q{OOP example}
  spec.summary       = %q{OOP example}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
end

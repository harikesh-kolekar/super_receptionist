# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'super_receptionist/version'

Gem::Specification.new do |spec|
  spec.name          = 'super_receptionist'
  spec.version       = SuperReceptionist::VERSION
  spec.authors       = ['Harikesh Kolekar']
  spec.email         = ['harikeshkolekarr@gmail.com']

  spec.summary       = %q{SuperReceptionist library for Ruby}
  spec.description   = %q{Idiomatic library for using the SuperReceptionist API from within ruby}
  spec.homepage      = "https://github.com/harikesh-kolekar/super_receptionist"
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.10'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rest-client'
end

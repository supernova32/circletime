# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'circletime/version'

Gem::Specification.new do |spec|
  spec.name          = "circletime"
  spec.version       = Circletime::VERSION
  spec.authors       = ["Patricio Cano"]
  spec.email         = ["suprnova32@gmail.com"]
  spec.description   = %q{Connect to circle.patriciocano.me and see all the circles}
  spec.summary       = %q{Small installable gem to simply show all the connected clients of a websocket Rails app.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'faye-websocket'

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

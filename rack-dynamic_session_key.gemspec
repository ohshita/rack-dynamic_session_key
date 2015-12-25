# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rack/dynamic_session_key/version'

Gem::Specification.new do |spec|
  spec.name          = "rack-dynamic_session_key"
  spec.version       = Rack::DynamicSessionKey::VERSION
  spec.authors       = ["OHSHITA Makoto"]
  spec.email         = ["oosita.makoto@gmail.com"]

  spec.summary       = %q{accepts Proc as a session key}
  spec.description   = %q{accepts Proc as a session key}
  spec.homepage      = "https://github.com/ohshita/rack-dynamic_session_key"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rack"
end

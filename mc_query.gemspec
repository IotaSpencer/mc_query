# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mc_query/version'

Gem::Specification.new do |spec|
  spec.name        = "mc_query"
  spec.version     = MCQuery::VERSION
  spec.authors     = ["Ken Spencer"]
  spec.email       = ["me@iotaspencer.me"]
  spec.summary     = %q{Ruby bindings to query Minecraft servers, and use RCON on enabled servers.}
  spec.description = "#{spec.summary}"
  spec.homepage    = "https://iotaspencer.me/projects/mc_query"
  spec.license     = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_dependency 'packable', '~> 1.3.10'
  spec.add_dependency 'typesafe_enum', '~> 0.1.9'
end

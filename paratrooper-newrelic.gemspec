# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paratrooper-newrelic/version'

Gem::Specification.new do |gem|
  gem.name          = "paratrooper-newrelic"
  gem.version       = Paratrooper::Newrelic::VERSION
  gem.authors       = ["Brandon Farmer", "Matt Polito"]
  gem.email         = ["bthesorceror@gmail.com", "matt.polito@gmail.com"]
  gem.description   = %q{Send deploy notifications to Newrelic service when deploying with Paratrooper}
  gem.summary       = %q{Send deploy notifications to Newrelic service when deploying with Paratrooper}
  gem.homepage      = "http://github.com/mattpolito/paratrooper-newrelic"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec', '~> 2.12'
  gem.add_development_dependency 'pry'
  gem.add_dependency 'paratrooper', '~> 1.2'
end

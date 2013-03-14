# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paratrooper-pingdom/version'

Gem::Specification.new do |gem|
  gem.name          = "paratrooper-pingdom"
  gem.version       = Paratrooper::Pingdom::VERSION
  gem.authors       = ["Tobias L. Maier"]
  gem.email         = ["me@tobiasmaier.info"]
  gem.description   = %q{Send deploy notifications to Pingdom service when deploying with Paratrooper}
  gem.summary       = %q{Send deploy notifications to Pingdom service when deploying with Paratrooper}
  gem.homepage      = "http://github.com/tmaier/paratrooper-pingdom"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec', '~> 2.12'
  gem.add_development_dependency 'pry'
  gem.add_dependency 'paratrooper', '~> 1.2'
end

# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'collectnik/version'

Gem::Specification.new do |gem|
  gem.name          = "collectnik"
  gem.version       = Collectnik::VERSION
  gem.authors       = ["Sean Redmond"]
  gem.email         = ["github-smr@sneakemail.com"]
  gem.description   = %q{Ruby client for the NYPL Digital Collections API}
  gem.summary       = %q{Ruby client for the NYPL Digital Collections API}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "faraday"

  if RUBY_VERSION < "1.9"
    gem.add_development_dependency "json_pure"
  end

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
end

# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'a_slow_gem/version'

Gem::Specification.new do |gem|
  gem.name          = "a_slow_gem"
  gem.version       = ASlowGem::VERSION
  gem.authors       = ["Mat Schaffer"]
  gem.email         = ["mat@schaffer.me"]
  gem.description   = %q{Write a gem description}
  gem.summary       = %q{Write a gem summary}
  gem.homepage      = ""

  gem.files         = `sleep 10 && git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end

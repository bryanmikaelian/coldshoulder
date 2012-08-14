# -*- encoding: utf-8 -*-
require File.expand_path('../lib/coldshoulder/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Bryan Mikaelian"]
  gem.email         = ["bryan.mikaelian@gmail.com"]
  gem.description   = %q{Generate gitignore files with ease.}
  gem.summary       = %q{Written in Ruby, coldshoulder is a command line tool that will let you easily generate a gitignore file.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "coldshoulder"
  gem.require_paths = ["lib"]
  gem.version       = Coldshoulder::VERSION
end

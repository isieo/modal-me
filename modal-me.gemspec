# -*- encoding: utf-8 -*-
require File.expand_path('../lib/modal-me/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Calvin Tee"]
  gem.email         = ["calvin@collectskin.com"]
  gem.description   = %q{Easily create a modal for your existing views using javascript requests}
  gem.summary       = %q{Easily create a modal for your existing views using javascript requests}
  gem.homepage      = "http://collectskin.com"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "modal-me"
  gem.require_paths = ["lib"]
  gem.version       = Modal::Me::VERSION
  

  gem.add_development_dependency 'rails', '>= 4.0'
  # gem.add_development_dependency 'twitter-bootstrap-rails', '>= 2.0.4'
end

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-mangoapps/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-mangoapps"
  spec.version       = Omniauth::Mangoapps::VERSION
  spec.authors       = ["MangoApps API Engineering team"]
  spec.email         = ["api-engineering@mangoapps.com"]
  spec.summary       = %q{Official OmniAuth strategy for Mangoapps}
  spec.description   = %q{Official OmniAuth strategy for Mangoapps}
  spec.homepage      = "https://www.mangoapps.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "omniauth", "~> 2.0"
  spec.add_dependency "omniauth-oauth2", "~> 1.0"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.7"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "webmock"
end

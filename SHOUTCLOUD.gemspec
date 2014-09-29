# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'SHOUTCLOUD/VERSION'

Gem::Specification.new do |spec|
  spec.name          = "SHOUTCLOUD"
  spec.version       = SHOUTCLOUD::VERSION
  spec.authors       = ["JOHN BARTON"]
  spec.email         = ["JRBARTON@GMAIL.COM"]
  spec.summary       = %q{WEBSCALE UPCASE}
  spec.description   = %q{MONKEYPATCH IN A MORE WEBSCALE UPCASE}
  spec.homepage      = "HTTPS://GITHUB.COM/SHOUTCLOUD/SHOUTCLOUD_RUBY"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_runtime_dependency "httparty"
end

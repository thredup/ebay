# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "ebay/version"

Gem::Specification.new do |s|
  s.name        = "ebayapi"
  s.version     = Ebay::VERSION
  s.authors     = ["Cody Fausner", "Peter McCracken"]
  s.email       = "peter.mccracken@shopify.com"
  s.homepage    = "https://github.com/peterjm/ebay"
  s.summary     = "Ruby interface to the eBay XML Trading API"
  s.description = "A ruby library for interacting with the eBay XML Trading API, based on self-generated request and response classes."

  s.files         = `git ls-files`.split($/)
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ["lib"]

  s.required_rubygems_version = ">= 1.3.4"

  s.add_runtime_dependency("money", ["~> 3"])
  s.add_runtime_dependency("xml-mapping", ["~> 0.8.1"])

  s.add_development_dependency("activesupport", [">= 2.3.4"])
  s.add_development_dependency("xml-simple", ["~> 1.0.11"])
  s.add_development_dependency("libxml-ruby", ["~> 1.1.4"])
end

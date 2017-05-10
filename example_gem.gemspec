# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'example_gem/version'

Gem::Specification.new do |spec|
  spec.name          = 'example_gem'
  spec.version       = ExampleGem::VERSION
  spec.authors       = ['Uwe Kubosch']
  spec.email         = %w(uwe@kubosch.no)
  spec.description   = %q{An example of a Ruboto-specific RubyGem}
  spec.summary       = %q{This is an example of how to release platform specific gems.
Included at this time is Ruboto specific version,
but contact us if you would like to add another version.}
  spec.platform      = 'dalvik' # Use 'dalvik10' to limit to api level 10
  spec.homepage      = 'https://github.com/ruboto/example_gem'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = %w(lib)

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end

# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pseudo_object/version'

Gem::Specification.new do |spec|
  spec.name          = "pseudo_object"
  spec.version       = PseudoObject::VERSION
  spec.authors       = ["indeep-xyz"]
  spec.email         = ["indeep.xyz@gmail.com"]

  spec.summary       = %q{Pseudo class objects of standard library in Ruby.}
  spec.description   = %q{Pseudo class objects of standard library in Ruby.}
  spec.homepage      = "https://github.com/indeep-xyz/pseudo-object"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.post_install_message = <<-MESSAGE
!    The 'PseudoObject' gem has been deprecated and has been replaced by 'Pseudoo'.
!    See: https://rubygems.org/gems/pseudoo
!    And: https://github.com/indeep-xyz/pseudoo
MESSAGE
end

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'kubelogic/version'

Gem::Specification.new do |spec|
  spec.name          = 'kubelogic'
  spec.version       = Kubelogic::VERSION
  spec.authors       = ['Louis Bellet']
  spec.email         = ['lbellet@heliostech.fr']

  spec.summary       = %q{Shared library for rubykube platform components.}
  spec.description   = %q{Kubelogic brings a number of application helpers for building the business logic backend..}
  spec.homepage      = 'https://www.peatio.tech'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'railties', '>= 5.0.0'
  spec.add_dependency 'jwt',      '~> 2.1'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake',    '~> 10.0'
  spec.add_development_dependency 'rspec',   '~> 3.0'
end

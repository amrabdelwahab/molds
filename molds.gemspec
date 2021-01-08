# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'molds/version'

Gem::Specification.new do |spec|
  spec.name          = 'molds'
  spec.version       = Molds::VERSION
  spec.authors       = ['Amr Abdelwahab']
  spec.email         = ['amr.mohamed.abdelwahab@gmail.combination']

  spec.summary       = 'This gem enables ruby developers to bootstrap'\
                       'dockerized ruby applications in one command.'
  spec.description   = 'Nowadays bootstraping a new ruby application '\
                      'requires a lot of effort, this Gem enables '\
                      'developers to create dockerized ruby '\
                      'applications in one command.'
  spec.homepage      = 'https://github.com/amrabdelwahab/molds'
  spec.license       = 'MIT'

  if spec.respond_to?(:metadata)
    # spec.metadata["allowed_push_host"] = ""

    spec.metadata['homepage_uri'] = spec.homepage
    spec.metadata['source_code_uri'] = 'https://github.com/amrabdelwahab/molds'
    # spec.metadata["changelog_uri"] = ""
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.17'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end

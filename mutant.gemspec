# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.name        = 'mutant'
  gem.version     = '0.2.11'
  gem.authors     = [ 'Markus Schirp' ]
  gem.email       = [ 'mbj@seonic.net' ]
  gem.description = 'Mutation testing for ruby under rubinius'
  gem.summary     = gem.description
  gem.homepage    = 'https://github.com/mbj/mutant'

  gem.require_paths    = [ 'lib' ]
  gem.files            = `git ls-files`.split("\n")
  gem.test_files       = `git ls-files -- spec`.split("\n")
  gem.extra_rdoc_files = %w[TODO LICENSE]
  gem.executables       = [ 'mutant' ]

  gem.add_runtime_dependency('to_source',           '~> 0.2.8')
  gem.add_runtime_dependency('ice_nine',            '~> 0.6.0')
  gem.add_runtime_dependency('descendants_tracker', '~> 0.0.1')
  gem.add_runtime_dependency('backports',           '~> 2.6')
  gem.add_runtime_dependency('adamantium',          '~> 0.0.4')
  gem.add_runtime_dependency('mbj-inflector',       '~> 0.0.1')
  gem.add_runtime_dependency('equalizer',           '~> 0.0.1')
  gem.add_runtime_dependency('abstract_type',       '~> 0.0.2')
  gem.add_runtime_dependency('diff-lcs',            '~> 1.1.3')
end

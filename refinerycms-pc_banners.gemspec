# Encoding: UTF-8

Gem::Specification.new do |s|
  s.platform          = Gem::Platform::RUBY
  s.name              = 'refinerycms-pc_banners'
  s.version           = '2.0.0'
  s.description       = 'Ruby on Rails Banners extension for Refinery CMS'
  s.date              = '2012-03-11'
  s.summary           = 'Banners extension for Refinery CMS'
  s.require_paths     = %w(lib)
  s.files             = Dir["{app,config,db,lib}/**/*"] + ["readme.md"]
  s.author            = 'Perfect Circle'

  # Runtime dependencies
  s.add_dependency             'refinerycms-core',    '~> 2.0.1'

  # Development dependencies (usually used for testing)
  s.add_development_dependency 'refinerycms-testing', '~> 2.0.1'
end

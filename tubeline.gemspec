Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  s.name              = 'tubeline'
  s.version           = '0.1'
  s.date              = '2013-11-17'

  s.summary     = "London Underground status API"
  s.description = "A ruby library for interacting with the London Underground Tube status API"

  s.authors  = ["Luke Carpenter"]
  s.email    = 'luke@ghostworks.io'
  s.homepage = 'https://ghostworks.github.io/tubeline'

  s.require_paths = %w[lib]

  s.rdoc_options = ["--charset=UTF-8"]
  s.extra_rdoc_files = %w[README.md LICENSE]

  s.add_dependency('nokogiri')

  # = MANIFEST =
  s.files = %w[
    LICENSE
    README.md
    Rakefile
    lib/tubeline.rb
    tubeline.gemspec
  ]
  # = MANIFEST =

  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }
end

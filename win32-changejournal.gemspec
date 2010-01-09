require 'rubygems'

spec = Gem::Specification.new do |gem|
   gem.name       = 'win32-changejournal'
   gem.version    = '0.3.3'
   gem.authors    = ['Daniel J. Berger', 'Park Heesob']
   gem.license    = 'Artistic 2.0'
   gem.email      = 'djberg96@gmail.com'
   gem.homepage   = 'http://www.rubyforge.org/projects/win32utils'
   gem.platform   = Gem::Platform::RUBY
   gem.summary    = 'A library for monitoring files and directories on NTFS'
   gem.has_rdoc   = true
   gem.test_file  = 'test/test_win32_changejournal.rb'
   gem.extensions = ['ext/extconf.rb']
   gem.files      = Dir['**/*'].reject{ |f| f.include?('CVS') }

   gem.required_ruby_version = '>= 1.8.2'
   gem.rubyforge_project = 'win32utils'

   gem.extra_rdoc_files = [
      'README',
      'CHANGES',
      'MANIFEST',
      'ext/win32/changejournal.c'
   ]

   gem.add_development_dependency('test-unit', '>= 2.0.3')

   gem.description = <<-EOF
      The win32-changejournal library provides an interface for MS Windows
      change journals. A change journal is a record of any changes on a given
      volume maintained by the operating system itself.
   EOF
end

Gem::Builder.new(spec).build
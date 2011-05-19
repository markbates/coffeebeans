require 'rubygems'

# Set up gems listed in the Gemfile.
gemfile = File.expand_path('../Gemfile', __FILE__)
begin
  ENV['BUNDLE_GEMFILE'] = gemfile
  require 'bundler'
  Bundler.setup
rescue Bundler::GemNotFound => e
  STDERR.puts e.message
  STDERR.puts "Try running `bundle install`."
  exit!
end if File.exist?(gemfile)

Bundler.require

Gemstub.test_framework = :rspec

Gemstub.gem_spec do |s|
  s.version = '1.0.0'
  # s.rubyforge_project = 'coffeescript_rails'
  s.add_dependency('coffee-script')
  s.add_dependency('actionpack', '>= 3.0.0')
  s.email = 'mark+github@markbates.com'
  s.homepage = 'http://github.com/markbates/coffeebeans'
end

Gemstub.rdoc do |rd|
  rd.title = 'coffeebeans'
end

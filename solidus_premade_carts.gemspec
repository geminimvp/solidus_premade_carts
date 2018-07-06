# encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'solidus_premade_carts/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'solidus_premade_carts'
  s.version     = SolidusPremadeCarts::VERSION
  s.summary     = 'Allow pre-made carts, which can be checked out with a link'
  s.description = 'PremadeCarts are sets of products and promotions'

  s.required_ruby_version = ">= 2.1"
  s.license     = 'All Rights Reserved'

  s.author    = 'Jim Kane'
  s.email     = 'jim@enginecommerce.com'
  s.homepage  = 'http://www.enginecommerce.com'

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  solidus_version = [">= 1.2.0", "< 3"]

  s.add_dependency 'solidus_core', '>= 1.0'
  # s.add_dependency 'solidus_backend', '>= 1.0'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'capybara-screenshot'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'pry-byebug'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'rspec_junit_formatter'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'rubocop-rspec'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
end

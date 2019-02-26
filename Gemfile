source 'https://rubygems.org'

branch = ENV.fetch('SOLIDUS_BRANCH', 'master')
gem 'solidus', github: 'solidusio/solidus', branch: branch
gem 'solidus_auth_devise', '~> 1.0'

if branch == 'master' || branch >= 'v2.3'
  gem 'rails', '~> 5.1.6'
elsif branch >= 'v2.0'
  gem 'rails', '~> 5.0.7'
else
  gem 'rails', '~> 4.2.10'
end

gem 'mysql2', '~> 0.4.10'
gem 'pg', '~> 0.21'

group :test do
  if branch == 'master' || branch >= 'v2.0'
    gem 'rails-controller-testing'
  else
    gem 'rails_test_params_backport'
  end

  if branch < 'v2.5'
    gem 'factory_bot', '4.10.0'
  else
    gem 'factory_bot', '> 4.10.0'
  end
end

group :development, :test do
  gem 'pry-rails'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

gemspec

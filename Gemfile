# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '< 5.3.0'

gem 'solidus'
# Provides basic authentication functionality for testing parts of your engine
gem 'solidus_auth_devise', '~> 2.1'

gemspec

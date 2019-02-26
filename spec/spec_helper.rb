# frozen_string_literal: true

ENV['RAILS_ENV'] = 'test'

require File.expand_path('../dummy/config/environment.rb', __FILE__)
abort('The Rails environment is running in production mode!') if Rails.env.production?

require 'rspec/rails'

Dir[File.join(File.dirname(__FILE__), 'support/**/*.rb')].each { |f| require f }

require 'solidus_premade_carts/factories'

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.filter_rails_from_backtrace!
  config.fail_fast = ENV['FAIL_FAST'] || false
end

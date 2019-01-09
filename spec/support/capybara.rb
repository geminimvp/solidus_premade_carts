require 'capybara/rspec'
require 'capybara-screenshot/rspec'
require 'selenium/webdriver'
require 'chromedriver-helper'

RSpec.configure do |config|
  config.include Rack::Test::Methods, type: :requests

  Capybara.javascript_driver = :selenium
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app, browser: :chrome)
  end
end

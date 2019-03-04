require 'capybara/rspec'
require 'capybara-screenshot/rspec'
require 'selenium/webdriver'
require 'chromedriver-helper'

RSpec.configure do |config|
  config.include Rack::Test::Methods, type: :requests

  Capybara.server_port = 8888 + ENV['TEST_ENV_NUMBER'].to_i

  Chromedriver.set_version '2.45'

  Capybara.javascript_driver = :selenium
  Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(
      app,
      browser: :chrome,
      desired_capabilities: Selenium::WebDriver::Remote::Capabilities.chrome(
        chromeOptions: { args: %w[ headless disable-gpu window-size=1280,1024 ] }
      )
    )
  end


end

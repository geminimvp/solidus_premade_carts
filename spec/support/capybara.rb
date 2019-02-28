require 'capybara/rspec'
require 'capybara/rails'
require 'selenium/webdriver'

RSpec.configure do |config|
  config.include Rack::Test::Methods, type: :requests

  Capybara.register_driver :selenium_chrome_headless do |app|
    browser_options = ::Selenium::WebDriver::Chrome::Options.new
    browser_options.args << '--headless'
    browser_options.args << '--disable-gpu'
    browser_options.args << '--window-size=1440,1080'

    Capybara::Selenium::Driver.new(app, browser: :chrome, options: browser_options)
  end

  Capybara.javascript_driver = :selenium_chrome_headless
  Capybara.default_max_wait_time = 10
end

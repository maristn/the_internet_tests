require_relative './pages/base_page.rb'
require 'rubygems' if RUBY_VERSION < '1.9'


Capybara.register_driver :selenium do |app|
  Selenium::WebDriver::Dimension.new(1920, 1080)
  Capybara::Selenium::Driver.new(app,
           browser: :chrome,
           url: 'http://chrome:4444/wd/hub',
           desired_capabilities: Selenium::WebDriver::Remote::Capabilities.send('chrome'))
end

Capybara.configure do |config|
  config.default_driver = :selenium
end

Capybara.default_max_wait_time = 15

require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "os"

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.app_host = "http://automationpractice.com"
    config.default_max_wait_time = 15
      
end    
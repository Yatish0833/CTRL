require 'cucumber/rails'
require 'database_cleaner'
require 'selenium-webdriver'
require 'capybara-screenshot/cucumber'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(
    app,
    :browser => :remote,
    :url => 'http://selenium:4444/',
    :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome
  )
end

Capybara.default_driver = :selenium

Capybara.app_host = 'http://web:3000'

ActionController::Base.allow_rescue = false

DatabaseCleaner.strategy = DatabaseCleaner::NullStrategy
DatabaseCleaner.clean

Cucumber::Rails::Database.javascript_strategy = :truncation

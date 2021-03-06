require 'rspec'
require 'cucumber'
require 'selenium/webdriver'
require 'Capybara'
require 'Capybara/cucumber'

require 'pry'
#require 'site_prism'



Capybara.register_driver :selenium do |globalweb|
	Capybara::Selenium::Driver.new(globalweb, :browser => :chrome)
end

Capybara.configure do |config|
    Capybara.default_driver = :selenium
    config.default_max_wait_time = 30
    Capybara.ignore_hidden_elements = false
    Capybara.page.driver.browser.manage.window.maximize
end

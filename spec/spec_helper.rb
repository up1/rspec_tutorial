require 'capybara/rspec'

require_relative '../book'
require_relative '../bowling'
require_relative '../burger'
 
Capybara.default_driver = :selenium
Capybara.app_host = "http://showcase-eu.demo.venda.com"
Capybara.default_wait_time = 10
Capybara.current_session.driver.browser.manage.window.maximize


RSpec.configure do |config|
  config.include Capybara::DSL
end

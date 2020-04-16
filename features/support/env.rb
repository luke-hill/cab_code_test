# frozen_string_literal: true

require 'dotenv'
Dotenv.load('.env')

require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
require 'webdrivers'

# To prevent natural cucumber load order
require_relative 'pages/google/home/uk'
require_relative 'helpers/data'

Capybara.register_driver :selenium do |app|
  browser = ENV.fetch('BROWSER', 'chrome').to_sym
  Capybara::Selenium::Driver.new(app, browser: browser)
end

Capybara.configure do |config|
  config.default_driver = :selenium
  # CAB-NOTE-1
  # Ideally for a constructed site this would be set to 0.
  # Dependent on your philosophy this can be altered
  config.default_max_wait_time = 0
  # CAB-NOTE-2
  # Ideally for a set of normal tests you would have one owned TLD.
  # Hitting sites like google e.t.c. and then redirecting from there
  # can prove problematic. In the real world this variable would be
  # set to +'https://www.citizensadvice.org.uk/'+ and used exclusively
  # Whereas here we use google.co.uk
  config.app_host = 'https://www.google.co.uk/'
end

World(Helpers::Data)

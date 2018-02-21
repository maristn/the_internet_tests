# frozen_string_literal: true
require 'capybara/dsl'
require 'test/unit'
require 'site_prism'
require 'selenium-webdriver'
module TheInternetSite
  module Pages
    class BasePage < SitePrism::Page
      include Test::Unit::Assertions
      include Capybara::DSL
    end
  end
end

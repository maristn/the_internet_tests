Dir[File.join(File.dirname(__FILE__), './pages/*.rb')].each { |file| require file }

# Define your helpers...
module TheInternetSite
  module Helpers
    def login_page
      TheInternetSite::Pages::TheInternetLoginPage.new
    end

    def hovers_page
      TheInternetSite::Pages::TheInternetHoversPage.new
    end

    def tables_page
      TheInternetSite::Pages::TheInternetTablesPage.new    
    end
  end
end

# Include your helpers!
Gauge.configure do |config|
  config.include TheInternetSite::Helpers
end

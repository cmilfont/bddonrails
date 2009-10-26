ENV["RAILS_ENV"] ||= "cucumber"
require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')
require 'cucumber/rails/world'

require 'cucumber/formatter/unicode'

#Cucumber::Rails.bypass_rescue
Cucumber::Rails::World.use_transactional_fixtures = false

require 'factory_girl'
Dir.glob(File.join(File.dirname(__FILE__), '../../spec/factories/*.rb')).each {|f| require f }

=begin
require 'webrat'
require 'cucumber/webrat/table_locator'

Webrat.configure do |config|
  config.mode = :rails
end
=end

require 'cucumber/rails/rspec'
#require 'webrat/core/matchers'

require 'database_cleaner'
require 'database_cleaner/cucumber'
DatabaseCleaner.strategy = :truncation

require 'selenium'

system( "kill -9 `cat tmp/pids/server.pid`" )
start_server = "ruby script/server -p 3001 -d -e test"
puts start_server
system(start_server)
system( "rake selenium:rc:start" )

browser = Selenium::SeleniumDriver.new("localhost", 4444, "*chrome", "http://localhost", 20000)
browser.set_speed(250)
browser.start

Before do
  @browser = browser
end

After do |scenario|
  if scenario.failed?
    @browser.capture_screenshot(
      File.join(
        RAILS_ROOT, 'tmp', "screenshot_#{Time.now.to_s(:db)}.png" ) )
  end
end

# "after all"
at_exit do
  browser.stop rescue nil
  system( "kill -9 `cat tmp/pids/server.pid`" )
  system( "rake selenium:rc:stop" )
end


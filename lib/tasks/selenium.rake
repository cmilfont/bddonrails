require 'selenium/rake/tasks'

SELENIUM_RC_JAR = "vendor/selenium-server/selenium-server.jar"

Selenium::Rake::RemoteControlStartTask.new do |rc|
  rc.port = 4444
  rc.timeout_in_seconds = 30
  rc.background = true
  rc.wait_until_up_and_running = true
  rc.jar_file = SELENIUM_RC_JAR
  rc.additional_args << "-singleWindow"
end

Selenium::Rake::RemoteControlStopTask.new do |rc|
  rc.host = "localhost"
  rc.port = 4444
  rc.timeout_in_seconds = 30
  rc.wait_until_stopped = true
end


RAILS_GEM_VERSION = '2.3.4' unless defined? RAILS_GEM_VERSION

require File.join(File.dirname(__FILE__), 'boot')

Rails::Initializer.run do |config|

  if [ 'test', 'cucumber' ].include?( RAILS_ENV )
    config.gem 'rspec',       :lib => false,        :version => '>=1.2.6'
    config.gem 'rspec-rails', :lib => 'spec/rails', :version => '>=1.2.6'
    config.gem 'cucumber',    :lib => false,        :version => '=0.6.4'
    config.gem 'selenium-client', :lib => false
    config.gem 'bmabey-database_cleaner', :lib => false
    config.gem 'thoughtbot-factory_girl', :lib => false
  end

  config.i18n.default_locale = :"pt-BR"
  config.time_zone = 'UTC'

end


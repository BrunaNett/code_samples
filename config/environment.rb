require 'bundler'
Bundler.require
$LOAD_PATH << '.'
Dir["models/*.rb"].each {|f| require f}

ActiveRecord::Base.establish_connection(
  adapter:    'postgresql',
  database:   'stevenrules'
)
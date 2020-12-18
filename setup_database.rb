# to connect to correct database
require File.dirname(__FILE__) + '/lib/databaseconnection.rb'

if ENV['RACK_ENV'] == 'test'
  DatabaseConnection.setup('daily_diary_test')
else
  DatabaseConnection.setup('daily_diary')
end

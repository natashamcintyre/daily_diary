# to connect to correct database
require 'databaseconnection'

if ENV['RACK_ENV'] == 'test'
  DatabaseConnection.setup('daily_diary_test')
else
  DatabaseConnection.setup('daily_diary')
end

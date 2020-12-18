# to connect to correct database
require 'databaseconnection'

if ENV['RACK_ENV'] == 'test'
  DatabaseConnection.setup(dbname: daily_diary_test)
else
  DatabaseConnection.setup(dbname: daily_diary)
end

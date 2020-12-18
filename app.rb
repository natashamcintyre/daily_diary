require 'sinatra/base'
require 'databaseconnection'
require_relative './setup_database.rb'

class Diary < Sinatra::Base

  get '/' do
    "Welcome to my diary"
  end

  get '/add_entry' do
    erb :add_entry
  end

  get '/new_entry' do
    title = params[:title]
    content = params[:content]
    "#{title}: #{content}"
    # Create Entry - Entry.create
  end

end

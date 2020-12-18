require 'sinatra/base'
require 'databaseconnection'
require_relative './setup_database.rb'

class Diary < Sinatra::Base

  get '/' do
    "Welcome to my diary"
  end

  get '/new_entry' do
    erb :add_entry
  end

  post '/add_entry' do
    Entry.create(params[:title], params[:content])
    redirect '/'
  end

end

require 'sinatra/base'
require File.dirname(__FILE__) + '/lib/databaseconnection.rb'
require File.dirname(__FILE__) + '/lib/entry.rb'
require_relative './setup_database.rb'

class Diary < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new_entry' do
    erb :add_entry
  end

  post '/add_entry' do
    Entry.create(params[:title], params[:content])
    redirect '/browse'
  end

  get '/browse' do
    @entries = Entry.all
    erb :entry_list
  end

  get '/read_entry' do
    @entry = Entry.new(params[:title], params[:content])
    erb :read_entry
  end

  delete '/delete' do
    
  end
end

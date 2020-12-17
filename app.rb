require 'sinatra/base'

class Diary < Sinatra::Base

  get '/' do
    "Welcome to my diary"
  end

  get '/add_entry' do
    erb: add_entry.erb
  end

end

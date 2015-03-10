require 'sinatra/base'

class NameGame < Sinatra::Base 
  get '/' do
  erb :index
  end
end



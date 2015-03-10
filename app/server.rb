require 'sinatra/base'

class NameGame < Sinatra::Base
  get '/' do
    erb :index
  end

  get '/game' do
    erb :game
  end



end



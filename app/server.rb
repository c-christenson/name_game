require 'sinatra/base'

class NameGame < Sinatra::Base

  set :public_dir, Proc.new{File.join(root, "..", "public")}

  get '/' do
    erb :index
  end

  get '/game' do
    erb :game
  end



end



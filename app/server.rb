require 'sinatra/base'
require 'data_mapper'



class NameGame < Sinatra::Base

  env = ENV['RACK_ENV'] || 'development'

  set :public_dir, Proc.new{File.join(root, "..", "public")}

  DataMapper.setup(:default, "postgres://localhost/namegame_#{env}")

  require_relative './model/maker'

  DataMapper.finalize
  DataMapper.auto_upgrade!


  get '/' do
    erb :index
  end

  get '/game' do
    erb :game
  end



end



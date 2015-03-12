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
    @maker = Maker.all.shuffle
    @single_maker = @maker.first
    @maker_without_chosen = @maker.reject { |maker| maker == @single_maker }
    @maker_random = @maker_without_chosen[0..2]
    @maker_random << @single_maker
    @maker_random = @maker_random.shuffle
    erb :game
  end

post '/winner' do
  erb :winner
end

post '/loser' do
  erb :loser
end


end



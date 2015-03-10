require 'sinatra/base'
require 'sinatra'

class NameGame < Sinatra::Base

  get '/' do
    erb :index
  end

  set :root, File.dirname(__FILE__)
  set :views, Proc.new { File.join(root, "/../views")}

end
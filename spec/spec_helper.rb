require './app/server'
require 'capybara/rspec'
require 'sinatra'

Capybara.app = Sinatra::Application
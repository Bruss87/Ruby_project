require('sinatra')
require('sinatra/contrib/all') if development?
require('pry-byebug')
require_relative('../models/city.rb')
require_relative('../models/country.rb')
also_reload('../models/*')

get '/countries' do
  @countries = Country.all()
  erb ( :"countries/index" )
end

get '/countries' do
  
end

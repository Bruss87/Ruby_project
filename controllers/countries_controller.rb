require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/city.rb')
require_relative('../models/country.rb')
also_reload('../models/*')

get '/countries' do
  @country = Country.all()
  erb ( :"countries/index" )
end

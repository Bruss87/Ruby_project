require('sinatra')
require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/city.rb')
require_relative('../models/country.rb')
also_reload('../models/*')

get '/countries' do #index
  @countries = Country.all()
  @cities = City.all()
  erb (:"countries/index")
end

get '/countries/:id' do #show
  @country = Country.find(params[:id])
  erb (:show)
end
#new
get '/countries/new' do
  erb (:new)
end
#create
post 'countries/' do
  erb
end
#update

#edit

#delete

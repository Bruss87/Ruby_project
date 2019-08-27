require('sinatra')
require('sinatra/contrib/all') if development?
require('pry-byebug')
require_relative('../models/city.rb')
require_relative('../models/country.rb')
also_reload('../models/*')

get '/cities' do #index
  @cities = City.all()
  @countries = Country.all()
  erb (:"cities/index")
end

get '/cities/new' do #new
  @cities = City.all
  @countries = Country.all
  erb (:"cities/new")
end

post '/cities' do #create
  city = City.new(params)
  city.save
  redirect to '/cities'
end

get '/cities/:id' do #show
  @city = City.find(params[:id])
  erb(:"cities/show")
end

get '/cities/:id/edit' do #edit
  @city = City.find(params[:id])
  erb(:"cities/edit")
end

post '/cities/:id' do #update
  cities = City.new(params)
  cities.update
  redirect to "/cities/#{params['id']}"
end

post '/cities/:id/delete' do # delete
  city = City.find(params[:id])
  city.delete()
  redirect to '/cities'
end

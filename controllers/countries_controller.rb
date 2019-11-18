require('sinatra')
require('sinatra/contrib/all')if development?
require_relative('../models/city.rb')
require_relative('../models/country.rb')


get '/countries' do #index
  @countries = Country.all()
  @cities = City.all()
  erb (:"countries/index")
end

get '/countries/new' do #new
  erb (:"countries/new")
end

post '/countries' do #create
  country = Country.new(params)
  country.save
  redirect to '/countries'
end

get '/countries/:id' do #show
  @country = Country.find(params[:id])
  erb(:"countries/show")
end

get '/countries/:id/edit' do #edit
  @country = Country.find(params[:id])
  erb(:"countries/edit")
end

post '/countries/:id' do #update
  country = Country.new(params)
  country.update
  redirect to "/countries/#{params['id']}"
end

post '/countries/:id/delete' do # delete
  country = Country.find(params[:id])
  country.delete()
  redirect to '/countries'
end

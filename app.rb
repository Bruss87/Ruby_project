require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/cities_controller')
require_relative('controllers/countries_controller')


get '/notomorrow' do
  erb( :index )
end

require('pry')
require_relative('models/city')
# require_relative('models/country')

City.delete_all()

city1 = City.new({
  'name' = 'Bergen',
  'if visited' = 'true',
  'country_id'= 1
  })

city1.save

city2 = City.new({
  'name' = 'Oslo',
  'if visited' = 'false',
  'country_id'= 1
  })

city2.save

city3 = City.new({
  'name' = 'Stavanger',
  'if visited' = 'true',
  'country_id'= 1
  })

city3.save

city4 = City.new({
  'name' = 'Vienna',
  'if visited' = 'true',
  'country_id'= 2
  })

city4.save

city5 = City.new({
  'name' = 'Salzburg',
  'if visited' = 'false',
  'country_id'= 2
  })

city5.save

city6 = City.new({
  'name' = 'Innsbruck',
  'if visited' = 'false',
  'country_id'= 2
  })

city6.save

city7 = City.new({
  'name' = 'Porto',
  'if visited' = 'true',
  'country_id'= 3
  })

city7.save

city8 = City.new({
  'name' = 'Lisbon',
  'if visited' = 'false',
  'country_id'= 3
  })

city8.save

city9 = City.new({
  'name' = 'Faro',
  'if visited' = 'false',
  'country_id'= 3
  })

city9.save

city10 = City.new({
  'name' => 'Hanoi'
  'if_visited' => 'true'
  'country_id' => 4
  })

city10.save

city11 = City.new({
  'name' => 'Ho Chi Minh City'
  'if_visited' => 'true'
  'country_id' => 4
  })

city11.save

city12 = City.new({
  'name' => 'Kuala Lumpur'
  'if_visited' => 'false'
  'country_id' => 5
  })

city12.save  

city13 = City.new({
  'name' => 'Perak'
  'if_visited' => 'true'
  'country_id' => 5
  })

city13.save

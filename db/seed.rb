require('pry')
require_relative('../models/city')
require_relative('../models/country')

Country.delete_all()
City.delete_all()

country1 = Country.new({
  'name' => 'Norway',
  'continent' => 'Europe'
  })

country1.save

country2 = Country.new({
  'name' => 'Austria',
  'continent' => 'Europe'
  })

country2.save

country3 = Country.new({
  'name' => 'Portugal',
  'continent' => 'Europe'
  })

country3.save

country4 = Country.new({
  'name' => 'Vietnam',
  'continent' => 'Asia'
  })

country4.save

country5 = Country.new({
'name' => 'Malaysia',
'continent' => 'Asia'
})

country5.save


city1 = City.new({
  'name' => 'Bergen',
  'if_visited' => 't',
  'country_id'=> country1.id,
  'image' => '/images/bergen-brygge-2.jpg'
  })

city1.save

city2 = City.new({
  'name' => 'Oslo',
  'if_visited' => 'f',
  'country_id'=> country1.id,
  'image' => '/images/oslo.jpg'
  })

city2.save

city3 = City.new({
  'name' => 'Stavanger',
  'if_visited' => 't',
  'country_id' => country1.id,
  'image' => '/images/stavanger.jpg'
  })

city3.save

city4 = City.new({
  'name' => 'Vienna',
  'if_visited' => 't',
  'country_id' => country2.id,
  'image' => '/images/Vienna.jpg'
  })

city4.save

city5 = City.new({
  'name' => 'Salzburg',
  'if_visited' => 'f',
  'country_id' => country2.id,
  'image' => '/images/salzburg.jpg'
  })

city5.save

city6 = City.new({
  'name' => 'Innsbruck',
  'if_visited' => 'f',
  'country_id' => country2.id,
  'image' => '/images/Innsbruck.jpg'
  })

city6.save

city7 = City.new({
  'name' => 'Porto',
  'if_visited' => 't',
  'country_id' => country3.id,
  'image' => '/images/Porto.jpg'
  })

city7.save

city8 = City.new({
  'name' => 'Lisbon',
  'if_visited' => 'f',
  'country_id' => country3.id,
  'image' => '/images/lisbon.jpg'
  })

city8.save

city9 = City.new({
  'name' => 'Faro',
  'if_visited' => 'f',
  'country_id' => country3.id,
  'image' => '/images/faro.jpg'
  })

city9.save

city10 = City.new({
  'name' => 'Hanoi',
  'if_visited' => 't',
  'country_id' => country4.id,
  'image' => '/images/Hanoi.jpg'
  })

city10.save

city11 = City.new({
  'name' => 'Ho Chi Minh City',
  'if_visited' => 't',
  'country_id' => country4.id,
  'image' => '/images/HoChiMinh.jpg'
  })

city11.save

city12 = City.new({
  'name' => 'Kuala Lumpur',
  'if_visited' => 'f',
  'country_id' => country5.id,
  'image' => '/images/kualalumpur.jpg'
  })

city12.save

city13 = City.new({
  'name' => 'Perak',
  'if_visited' => 't',
  'country_id' => country5.id,
  'image' => '/images/ipoh.jpg'
  })

city13.save



binding.pry
nil

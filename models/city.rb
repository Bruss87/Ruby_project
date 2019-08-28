require_relative('../db/sql_runner')

class City

attr_accessor :if_visited
attr_reader :name, :country_id, :image, :id

def initialize(options)
  @name = options['name']
  @if_visited = options['if_visited'] == 't'
  @country_id = options['country_id'].to_i
  @image = options['image']
  @id = options['id'].to_i if options['id']
end

def save()
  sql = "INSERT INTO cities (name, if_visited, country_id, image)
  VALUES ($1, $2, $3, $4) RETURNING id"
  values = [@name, @if_visited, @country_id, @image]
  city = SqlRunner.run(sql, values)
  @id = city[0]['id'].to_i
end

def update()
  sql = "
  UPDATE cities
  SET(name, if_visited, country_id, image) = ($1, $2, $3, $4)
  WHERE id = $5"
  values = [@name, @if_visited,
    @country_id, @image, @id]
  SqlRunner.run(sql, values)
end

def delete()
  sql = " DELETE from cities
  WHERE id = $1
  "
  values = [@id]
  SqlRunner.run(sql, values)
end

def country()
  sql = "SELECT * FROM countries
  WHERE id =$1"
  values = [@country_id]
  country = SqlRunner.run(sql, values)
  result = Country.new(country.first)
  return result
end

def self.all
  sql = "SELECT * FROM cities"
  cities = SqlRunner.run(sql)
  cities.map{|city| City.new(city)}
end

def self.find(id)
   sql = "SELECT * FROM cities
   WHERE id = $1"
   values = [id]
   city = SqlRunner.run(sql, values)
   result = City.new(city.first)
   return result
 end

def self.delete_all()
    sql = "DELETE FROM cities"
    SqlRunner.run(sql)
end


end

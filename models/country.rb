require_relative('../db/sql_runner')

class Country

attr_reader :name, :continent, :id

def initialize(options)
  @name = options['name']
  @continent = options['continent']
  @id = options['id'].to_i if options['id']
end

def save()
  sql = "INSERT INTO countries (name, continent)
  VALUES ($1, $2) RETURNING id"
  values = [@name, @continent]
  country = SqlRunner.run(sql, values)
  @id = country[0]['id'].to_i
end

def update()
  sql = "UPDATE countries
  SET (name, continent) =
  ($1, $2)
  WHERE id = $3"
  values = [@name, @continent, @id]
  SqlRunner.run(sql, values)
end

def delete()
  sql = "DELETE from countries
  WHERE id = $1"
  values = [@id]
  SqlRunner.run(sql, values)
end

def cities()
  sql = "SELECT * FROM cities
  WHERE country_id= $1"
  values = [@id]
  cities = SqlRunner.run(sql, values)
  result = cities.map{|city| City.new(city)}
  return result
end

def self.all()
  sql = "SELECT * FROM countries"
  countries = SqlRunner.run(sql)
  countries.map{|country| Country.new(country)}
end

def self.find(id)
   sql = "SELECT * FROM countries
   WHERE id = $1"
   values = [id]
   country = SqlRunner.run(sql, values)
   result = Country.new(country.first)
   return result
 end

def self.delete_all()
    sql = "DELETE FROM countries"
    SqlRunner.run(sql)
end

end

require_relative("../db/sql_runner")

class City

attr_accessor :if_visited
attr_reader :name, :country_id, :id

def initialize(options)
  @name = options['name']
  @if_visited = options['if_visited']
  @country_id = options['country_id'].to_i
  @id = options['id'].to_i if options['id']
end

def save()
  sql = "INSERT INTO cities (name, if_visited, country_id)
  values = ($1, $2, $3) RETURNING id"
  city = SqlRunner.run(sql, values)
  @id = city[0]['id'].to_i
end

def self.all
  sql = "SELECT * FROM cities"
  cities = SqlRunner(sql)
  cities.map{|city| City.new(city)}
end

def
  
end












end

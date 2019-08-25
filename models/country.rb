require_relative('../db/sql_runner')

class Country
  
attr_reader :name, :continent, :idea

def initialize(options)
  @name = options['name']
  @continent = options['continent']
  @id = options['id'].to_i if options['id']
end




end

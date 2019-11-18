require('pg')
class SqlRunner

  # def self.run(sql, values = [])
  #   begin
  #     db = PG.connect({ dbname: 'travellist', host: 'localhost'})
  #     db.prepare("query", sql)
  #     result = db.exec_prepared("query", values)
  #   ensure
  #     db.close() if db != nil
  #   end
  #   return result
  # end

  def self.run(sql, values = [])
    begin
      db = PG.connect({ dbname: 'd5ehf3mek82kgb', host: 'ec2-184-73-192-251.compute-1.amazonaws.com', port: 5432, user: 'uvvkfqqoiqkfot', password: 'c16f05f28b9e47a78c8edba08fc7773a7fad6e8bc2fdc16f5b1d72d50ee2c84d'})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close() if db != nil
    end
    return result
  end

end

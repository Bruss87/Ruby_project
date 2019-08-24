require("minitest/autorun")
require_relative("../city")

class TestCity < MiniTest::Test

def setup()
  options = {
    "name" => "Bergen",
    "if_visited" => "true", "country_id" => 1,
    "id" => 1
  }
   @city = City.new(options)
end

def test_name()
  result = @city.name()
  assert_equal("Bergen", result)
end

def test_if_visited()
result = @city.if_visited()
assert_equal("true", result)
end

def test_country_id
  result = @city.country_id
  assert_equal(1, result)
end

end

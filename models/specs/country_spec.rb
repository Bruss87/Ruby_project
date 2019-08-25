require('minitest/autorun')
require_relative('../country')

class TestCountry < MiniTest::Test

  def setup()
    options = {
      'name' => 'Norway',
      'continent' => 'Europe',
      'id' => 1
    }
     @country = Country.new(options)
  end

  def test_name()
    result = @country.name()
    assert_equal('Norway', result)
  end


end

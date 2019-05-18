require 'minitest/autorun'
require '../lib/bank'
require '../lib/team'

class DeepFreezableTest < MiniTest::Test
  def test_deep_freeze_to_array
    assert_equal ['japan', 'us', 'india'], Team::COUNTRIES
    assert Team::COUNTRIES.frozen?
    assert Team::COUNTRIES.all? { |country| country.frozen? }
  end

  def test_deep_freeze_to_hash
    assert_equal({ 'japan' => 'yen', 'us' => 'dollar', 'india' => 'rupee'}, Bank::CURRENCIES)
    assert Bank::CURRENCIES.frozen?
    assert Bank::CURRENCIES.all? { |key, value| key.frozen? && value.frozen? }
  end
end
require "minitest/autorun"
require 'day3/houses'

class TestHousesCalculator < Minitest::Test
  def setup
    @grid = HousesCalculator.new
  end

  def test_count
    assert_equal 2, @grid.count('>')
    assert_equal 4, @grid.count('^>v<')
    assert_equal 2, @grid.count('^v^v^v^v^v')
  end

  def test_robo_count
    assert_equal 3, @grid.robo_count('^v')
    assert_equal 3, @grid.robo_count('^>v<')
    assert_equal 11, @grid.robo_count('^v^v^v^v^v')
  end
end

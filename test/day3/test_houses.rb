require "minitest/autorun"
require 'day3/houses'

class TestHousesCalculator < Minitest::Test
  def setup
    @grid = HousesCalculator.new
  end

  def test_visit
    assert_equal 2, @grid.visit('>')
    assert_equal 4, @grid.visit('^>v<')
    assert_equal 2, @grid.visit('^v^v^v^v^v')
  end
end

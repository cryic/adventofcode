require "minitest/autorun"
require 'parenthesis_floors'

class TestParenthesisFloors < Minitest::Test
  def setup
    @floor = ParenthesisFloors.new
  end

  def test_calc
    assert_equal 0, @floor.calc("(())")
    assert_equal 0, @floor.calc("()()")
    assert_equal 3, @floor.calc("(((")
    assert_equal 3, @floor.calc("(()(()(")
    assert_equal 3, @floor.calc("))(((((")
    assert_equal -1, @floor.calc("())")
    assert_equal -1, @floor.calc("))(")
    assert_equal -3, @floor.calc(")))")
    assert_equal -3, @floor.calc(")())())")
  end

  def test_goingdown
    assert_equal nil, @floor.goingdown("(")
    assert_equal 1, @floor.goingdown(")")
    assert_equal 1, @floor.goingdown("))")
    assert_equal 5, @floor.goingdown("()())")
  end
end

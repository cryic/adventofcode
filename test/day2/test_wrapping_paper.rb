require "minitest/autorun"
require 'day2/wrapping_paper'

class TestWrappingPaper < Minitest::Test
  def setup
    @present = WrappingPaper.new
  end

  def test_calc
    assert_equal 58, @present.calc('2x3x4')
    assert_equal 43, @present.calc('1x1x10')
    assert_equal 43, @present.calc('10x1x1')
  end

  def test_bow
    assert_equal 34, @present.bow('2x3x4')
    assert_equal 14, @present.bow('1x1x10')
  end

end

class HousesCalculator
  INCREMENT_X = '>'
  INCREMENT_Y = '^'
  DECREMENT_X = '<'
  DECREMENT_Y = 'v'

  def visit(str_movements)
    movements = str_movements.chars
    path = Path.new(0,0)
    movements.each do |move|
      case move
      when INCREMENT_X
        path.increment_x
      when INCREMENT_Y
        path.increment_y
      when DECREMENT_X
        path.decrement_x
      when DECREMENT_Y
        path.decrement_y
      end
    end
    path.history.uniq.count
  end

end

class Path
  attr_reader :x, :y, :history
  def initialize(starting_x, starting_y)
    @x = starting_x
    @y = starting_y
    @history = [[starting_x,starting_y]]
  end

  def current
    [x, y]
  end

  def decrement_x
    @x -= 1
    write_history
  end

  def decrement_y
    @y -= 1
    write_history
  end

  def history
    @history
  end

  def increment_x
    @x += 1
    write_history
  end

  def increment_y
    @y += 1
    write_history
  end

  private
  def write_history
    @history << current
  end
end

class ParenthesisFloors
  ADD_FLOOR = "("
  MINUS_FLOOR = ")"

  FLOOR_MAP = {
    ADD_FLOOR => 1,
    MINUS_FLOOR => -1
  }

  def calc(parens)
    floors = parens.chars
    floors.count(ADD_FLOOR) - floors.count(MINUS_FLOOR)
  end

  def goingdown(parens)
    floors = parens.chars
    #count = 1
    #found = floors.inject(0) do |sum, floor|
    #  puts "currnet floor: #{floor}"
    #  puts "currnet sum: #{sum}"
    #  break true if sum == -1
    #  count += 1
    #  sum + FLOOR_MAP[floor]
    #end
    #puts "current found: #{found}"
    #puts "current count: #{count}"
    #found == true ? count : nil

    #position = 0
    #found = floors.inject(0) do |memo, floor|
    #  floor_count = FLOOR_MAP[floor]
    #  position += 1
    #  memo == -1 ? true : memo + floor_count
    #end

    #found == true ? position : nil

    floor_moves= []
    results = floors.each_with_index do |floor, index|
      floor_moves << FLOOR_MAP[floor]
      current_floor = floor_moves.reduce(:+)
      if current_floor == -1
        break [true, index + 1]
      end
    end
    results[0] == true ? results[1] : nil
  end
end

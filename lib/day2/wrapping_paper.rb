class WrappingPaper
  def calc(str_measurements)
    box = Box.new(str_measurements)
    smallest_face_for_slack = box.faces.min
    box.surface_area + smallest_face_for_slack
  end

  def bow(str_measurements)
    box = Box.new(str_measurements)
    box.perimeter + box.cubic
  end


end

class Box
  attr_reader :length, :width, :height
  def initialize(str_measurements)
    @length, @width, @height = str_measurements.split('x').map(&:to_i)
  end

  def faces
    [length*width, width*height, height*length]
  end

  def surface_area
    2*length*width + 2*width*height + 2*height*length
  end

  def perimeter
    smallest_sides = [length, width, height].sort.take(2)
    smallest_sides.reduce(:+)*2
  end
  
  def cubic
    length*width*height
  end
end

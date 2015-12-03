class WrappingPaper
  def calc(str_measurements)
    length, width, height = str_measurements.split('x').map(&:to_i)
    #measurments = {
    #  length: length,
    #  width: width,
    #  height: height
    #}
    smallest_face_for_slack = [length*width, width*height, height*length].min
    surface_area = 2*length*width + 2*width*height + 2*height*length
    surface_area + smallest_face_for_slack
  end
end

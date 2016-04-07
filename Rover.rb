class Rover
  attr_reader :compass
  attr_accessor :x, :y,:direction

  def initialize(x,y,direction)
    @x = x
    @y = y
    @direction = direction
    @compass = {'N'=> 1,'E'=> 1,'S'=> -1,'W'=>-1}
  end

  def position
    "#{@x}, #{@y}, #{@direction}"
  end

  def move(coordinates)
    coordinates.each_char do |value|
      value == 'M' ? move_position : move_direction(value)
    end
  end

  def move_position
    if @direction == 'E' || @direction == 'W'
      self.x +=@compass[@direction]
    else
      self.y +=@compass[@direction]
    end
  end

  def move_direction(coordinate)
    direction_compass = @compass.keys
    compass_position = direction_compass.find_index(@direction)
    if coordinate == "R"
      self.direction =direction_compass[compass_position +1]
    else
      self.direction = direction_compass[compass_position -1]
    end
  end
end

new_rover = Rover.new(3,4,'S')
new_rover.move("M")




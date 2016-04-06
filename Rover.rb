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
      if value == 'M'
        move_position
      end
    end
  end

  def move_position
    if @direction == 'E' || @direction == 'W'
      self.x +=@compass[@direction]
    else
      self.y +=@compass[@direction]
    end
  end

  def move_direction

  end
end

new_rover = Rover.new(3,4,'S')
new_rover.move("M")
puts new_rover.position



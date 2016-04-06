class Rover
  attr_accessor :x, :y,:direction
  def initialize(x,y,direction)
    @x = x
    @y = y
    @direction = direction
  end

  def position
    "The Current Position is #{@x}, #{@y}, and facing #{@direction}"
  end

  def move(coordinates)
  end

end




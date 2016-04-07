require_relative "Rover"

describe "Rover" do
  let(:new_rover){Rover.new(5,4,'N')}

  it "has a Rover class" do
    expect(new_rover).to be_instance_of(Rover)
  end

  it "Can report it's own position" do
    expect(new_rover.position).to match("#{new_rover.x}, #{new_rover.y}, #{new_rover.direction}")
  end

  context "The rover can move" do
    it "can change position" do
      rover = Rover.new(3,3,'N')
      rover.move('M')
      expect(rover.position).to match("3, 4, N")
    end

    it "can change direction" do
      rover = Rover.new(3,3,'N')
      rover.move('R')
      expect(rover.position).to match("3, 3, E")
    end
  end
end
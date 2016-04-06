require_relative "Rover"

describe "Rover" do
  let(:newRover){Rover.new(5,4,'N')}

  it "has a Rover class" do
    expect(newRover).to be_instance_of(Rover)
  end

  it "Can report it's own position" do
    expect(newRover.position).to match("The Current Position is #{newRover.x}, #{newRover.y}, and facing #{newRover.direction}")
  end
end
require_relative "Rover"

describe "Rover" do

  it "has a Rover class" do
    newRover = Rover.new
    expect(newRover).to be_instance_of(Rover)
  end
end
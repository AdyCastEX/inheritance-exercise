require "./vehicle.rb"

RSpec.describe Vehicle do
  subject do
    described_class.new(plate_number: plate_number,
                        owner_name: owner_name,
                        color: color,
                        number_of_wheels: number_of_wheels,
                        tire_size: tire_size,
                        passenger_capacity: passenger_capacity)
  end

  let(:plate_number)  { "ABC 123" }
  let(:owner_name) { "Juan" }
  let(:color) { "Blue" }
  let(:number_of_wheels) { 4 }
  let(:tire_size) { "default" }
  let(:passenger_capacity) { 0 }

  it "saves correct plate_number" do
    expect(subject.plate_number).to eq plate_number
  end

  it "saves correct owner_name" do
    expect(subject.owner_name).to eq owner_name
  end

  it "saves correct color" do
    expect(subject.color).to eq color
  end

  it "saves correct number_of_wheels" do
    expect(subject.number_of_wheels).to eq number_of_wheels
  end

  it "saves correct tire_size" do
    expect(subject.tire_size).to eq tire_size
  end

  it "saves correct passenger_capacity" do
    expect(subject.passenger_capacity).to eq passenger_capacity
  end

  describe ".spares" do
    it "returns correct spares" do
      expected = { tire_size: tire_size }
      expect(subject.spares).to eq expected
    end
  end
end

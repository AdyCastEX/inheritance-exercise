require "./truck.rb"

RSpec.describe Truck do
  subject do
    described_class.new(plate_number: plate_number,
                        owner_name: owner_name,
                        color: color,
                        trailer_type: trailer_type)
  end

  let(:plate_number)  { "ABC 123" }
  let(:owner_name) { "Juan" }
  let(:color) { "Blue" }
  let(:trailer_type) { "Flatbed" }

  it "saves correct plate_number" do
    expect(subject.plate_number).to eq plate_number
  end

  it "saves correct owner_name" do
    expect(subject.owner_name).to eq owner_name
  end

  it "saves correct color" do
    expect(subject.color).to eq color
  end

  it "saves correct default number_of_wheels" do
    expect(subject.number_of_wheels).to eq 6
  end

  it "saves correct default tire_size" do
    expect(subject.tire_size).to eq "31x10.50R15/ C109R"
  end

  it "saves correct default passenger_capacity" do
    expect(subject.passenger_capacity).to eq 0
  end

  it "saves correct trailer_type" do
    expect(subject.trailer_type).to eq trailer_type
  end

  context "when values are specified" do
    subject do
      described_class.new(plate_number: plate_number,
                          owner_name: owner_name,
                          color: color,
                          trailer_type: trailer_type,
                          number_of_wheels: number_of_wheels,
                          tire_size: tire_size,
                          passenger_capacity: passenger_capacity)
    end

    let(:number_of_wheels) { 8 }
    let(:tire_size) { "295/75R22.5" }
    let(:passenger_capacity) { 2 }

    it "saves correct number_of_wheels" do
      expect(subject.number_of_wheels).to eq number_of_wheels
    end

    it "saves correct tire_size" do
      expect(subject.tire_size).to eq tire_size
    end

    it "saves correct passenger_capacity" do
      expect(subject.passenger_capacity).to eq passenger_capacity
    end
  end

  describe ".spares" do
    it "returns correct spares" do
      expected = { tire_size: "31x10.50R15/ C109R", trailer_type: trailer_type }
      expect(subject.spares).to eq expected
    end
  end
end

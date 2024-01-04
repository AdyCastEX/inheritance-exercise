require "./car.rb"

RSpec.describe Car do
  subject do
    described_class.new(plate_number: plate_number,
                        owner_name: owner_name,
                        color: color,
                        nickname: nickname)
  end

  let(:plate_number)  { "ABC 123" }
  let(:owner_name) { "Juan" }
  let(:color) { "Blue" }
  let(:nickname) { "Bolt" }

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
    expect(subject.number_of_wheels).to eq 4
  end

  it "saves correct default tire_size" do
    expect(subject.tire_size).to eq "P215/65R17 98T"
  end

  it "saves correct default passenger_capacity" do
    expect(subject.passenger_capacity).to eq 4
  end

  it "saves correct nickname" do
    expect(subject.nickname).to eq nickname
  end

  describe ".spares" do
    it "returns correct spares" do
      expected = { tire_size: "P215/65R17 98T" }
      expect(subject.spares).to eq expected
    end
  end
end

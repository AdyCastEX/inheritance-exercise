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

  it "saves correct default number_of_wheels" do
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

  context "when values are specified" do
    subject do
      described_class.new(plate_number: plate_number,
                          owner_name: owner_name,
                          color: color,
                          nickname: nickname,
                          number_of_wheels: number_of_wheels,
                          tire_size: tire_size,
                          passenger_capacity: passenger_capacity)
    end

    let(:number_of_wheels) { 3 }
    let(:tire_size) { "P225/70R16 91S" }
    let(:passenger_capacity) { 2 }

    it "saves correct number_of_wheels" do
      expect(subject.number_of_wheels).to eq number_of_wheels
    end

    it "saves correct default tire_size" do
      expect(subject.tire_size).to eq tire_size
    end

    it "saves correct default passenger_capacity" do
      expect(subject.passenger_capacity).to eq passenger_capacity
    end
  end
end

require "./bus.rb"

RSpec.describe Bus do
  subject do
    described_class.new(plate_number: plate_number,
                        owner_name: owner_name,
                        color: color)
  end

  let(:plate_number)  { "ABC 123" }
  let(:owner_name) { "Juan" }
  let(:color) { "Blue" }

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
    expect(subject.tire_size).to eq "15/80R22.5"
  end

  it "saves correct default passenger_capacity" do
    expect(subject.passenger_capacity).to eq 100
  end

  it "saves correct default passenger_count" do
    expect(subject.passenger_count).to eq 0
  end

  context "when passenger_count is specified" do
    subject do
      described_class.new(plate_number: plate_number,
                          owner_name: owner_name,
                          color: color,
                          passenger_count: passenger_count)
    end

    let(:passenger_count) { 10 }

    it "saves correct passenger_count" do
      expect(subject.passenger_count).to eq 10
    end
  end

  describe ".spares" do
    it "returns correct spares" do
      expected = { tire_size: "15/80R22.5" }
      expect(subject.spares).to eq expected
    end
  end

  describe ".load" do
    context "when within passenger capacity" do
      it "increments passenger count" do
        subject.load(20)
        expect(subject.passenger_count).to eq 20
      end
    end

    context "when beyond passenger capacity" do
      it "raises" do
        expect { subject.load(100) }.to raise_error(ArgumentError)
      end
    end
  end

  describe ".unload" do
    subject do
      described_class.new(plate_number: plate_number,
                          owner_name: owner_name,
                          color: color,
                          passenger_count: passenger_count)
    end

    let(:passenger_count) { 10 }

    context "when within passenger capacity" do
      it "deccrements passenger count" do
        subject.unload(5)
        expect(subject.passenger_count).to eq 5
      end
    end

    context "when value is beyond current passengers" do
      it "raises" do
        expect { subject.unload(20) }.to raise_error(ArgumentError)
      end
    end
  end
end

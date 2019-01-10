require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it 'gets a bike' do
    bike = Bike.new
    subject.dock(bike)
    bike = subject.release_bike
    expect(bike).to be_a Bike
  end

  it 'expect bike to work' do
      bike = Bike.new
      subject.dock(bike)
      bike = subject.release_bike
      expect(bike.working?).to eq(true)
  end

  it { is_expected.to respond_to :bike }

  describe '#dock' do
    it { should respond_to(:dock).with(1).argument }

    it 'should dock bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end
    
    it 'raise an error if capacity has been reached' do
      subject.dock(Bike.new)
      expect { subject.dock(Bike.new).to raise_error('Reached Maximum Capacity')}
    end

  end

  it 'shows docked bikes' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
  end

      describe '#release bike' do
        it 'raises an error for no bikes available' do
          expect { subject.release_bike }.to raise_error('There are no bikes')
        end
      end

end

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

  it 'dock a bike' do
      expect(subject).to respond_to(:dock).with(1).argument
  end

  it { is_expected.to respond_to :bike }

  it 'docks something' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
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

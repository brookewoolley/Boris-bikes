require 'docking_station'

RSpec.describe DockingStation do
  it 'should only store 1 bike' do
    bike1 = Bike.new
    subject.dock(bike1)

    bike2 = Bike.new
    expect { subject.dock(bike2) }.to raise_error('Reached Maximum Capacity')
  end
end

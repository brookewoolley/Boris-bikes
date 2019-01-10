require 'docking_station'

RSpec.describe DockingStation do
  it 'should store 20 bikes only' do
    20.times { subject.dock(Bike.new) }
    expect { subject.dock(Bike.new) }.to raise_error('Reached Maximum Capacity')
  end
end

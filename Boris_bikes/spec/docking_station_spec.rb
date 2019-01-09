require 'docking_station'

describe DockingStation do
#   it "release bike" do
     docking_station = DockingStation.new
#   expect(docking_station).to respond_to('release_bike')
# end
it { is_expected.to respond_to :release_bike }
# it {should respond_to 'release_bike'} - another example

   it 'gets a bike' do
    expect(docking_station.release_bike).to be_a Bike 
    end

end

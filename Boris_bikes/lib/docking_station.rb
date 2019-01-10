require_relative 'bike'

class DockingStation

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'There are no bikes' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Reached Maximum Capacity' if @bikes.count >= 20
    @bikes << bike
  end

end

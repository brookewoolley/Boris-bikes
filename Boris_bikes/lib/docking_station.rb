require_relative 'bike'

class DockingStation

  attr_reader :bike

  def release_bike
    if @bike == nil
      raise 'There are no bikes'
    else
      Bike.new
    end
  end

  def dock(bike)
    @bike = bike
  end

end

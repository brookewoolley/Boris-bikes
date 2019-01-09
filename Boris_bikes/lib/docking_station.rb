require_relative 'bike'

class DockingStation

  def release_bike
    Bike.new
  end

  def dock(bike)
    bike.class == Bike
  end

  def bike
  end
end

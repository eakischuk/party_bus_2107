class Bus
  attr_reader :name, :capacity, :passengers

  def initialize (name, capacity)
    @name = name
    @capacity = capacity
    @passengers = []
  end

  def add_passenger (passenger_name)
    @passengers << passenger_name
  end



end

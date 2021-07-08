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

  def yell_at_passengers
    @passengers.map {|passenger| passenger.upcase}
  end

  def number_of_passengers
    @passengers.length
  end

  def over_capacity?
    number_of_passengers > @capacity
  end

  def kick_out
    @passengers.shift
  end

end

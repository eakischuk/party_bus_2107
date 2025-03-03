require 'rspec'
require './lib/bus'

describe Bus do
  context 'Attributes' do
    it 'is a bus' do
      bus = Bus.new('Mikes Awesome Bus', 4)

      expect(bus).to be_an_instance_of(Bus)
    end

    it 'has a name' do
      bus = Bus.new('Mikes Awesome Bus', 4)

      expect(bus.name).to eq("Mikes Awesome Bus")
    end

    it 'has a capacity' do
      bus = Bus.new('Mikes Awesome Bus', 4)

      expect(bus.capacity).to eq(4)
    end

    it 'has no passengers by default' do
      bus = Bus.new('Mikes Awesome Bus', 4)

      expect(bus.passengers).to eq([])
    end
  end

  # Iteration 2
  context 'Passengers' do
    it 'returns a list of passengers' do
      bus = Bus.new('Mikes Awesome Bus', 4)
      bus.add_passenger('Mike')
      bus.add_passenger('Megan')
      bus.add_passenger('Tim')

      expect(bus.passengers).to eq(['Mike', 'Megan', 'Tim'])
    end

    it 'returns a list of uppercased names' do
      bus = Bus.new('Mikes Awesome Bus', 4)
      bus.add_passenger('Mike')
      bus.add_passenger('Megan')
      bus.add_passenger('Tim')

      expect(bus.yell_at_passengers).to eq(['MIKE', 'MEGAN', 'TIM'])
    end
  end
end

#Iteration 3
context 'Passengers' do
  it 'returns the number of passengers' do
    bus = Bus.new("Mikes Awesome Bus", 4)
    bus.add_passenger('Mike')
    bus.add_passenger('Megan')
    bus.add_passenger('Tim')

    expect(bus.number_of_passengers). to eq(3)
  end
end

context 'Capacity' do
  it 'checks bus capacity is not exceeded' do
    bus = Bus.new("Mikes Awesome Bus", 4)
    bus.add_passenger('Mike')
    bus.add_passenger('Megan')
    bus.add_passenger('Tim')

    expect(bus.over_capacity?). to eq(false)
  end

  it 'checks if bus capacity is exceeded' do
    bus = Bus.new("Mikes Awesome Bus", 4)
    bus.add_passenger('Mike')
    bus.add_passenger('Megan')
    bus.add_passenger('Tim')
    bus.add_passenger('Eve')
    bus.add_passenger('Alice')

    expect(bus.over_capacity?). to eq(true)
  end
end


#Iteration 4
context 'Passengers' do
  it 'checks passengers are removed' do
    bus = Bus.new("Mikes Awesome Bus", 4)
    bus.add_passenger('Mike')
    bus.add_passenger('Megan')
    bus.add_passenger('Tim')
    bus.add_passenger('James')
    bus.add_passenger('Cat')
    bus.add_passenger('Alice')

    bus.kick_out
    expect(bus.passengers).to eq(["Megan", "Tim", "James", "Cat", "Alice"])
  end
end

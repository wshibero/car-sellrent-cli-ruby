puts 'Hello, World!'

class Vehicle
  def initialize(manufacturer, year, model, price)
    @manufacturer = manufacturer
    @year = year
    @model = model
    @price = price
  end
  def string()
    return "Manufacturer: #{@manufacturer}\nYear: #{@year}\nModel: #{@model}\nPrice: #{@price}"
  end
end

class Bus < Vehicle
  def initialize(manufacturer, year, model, price, seats)
    super(manufacturer, year, model, price)
    @seats = seats
  end
  def string()
    return super() + "\nSeats: #{@seats}"
  end
end

class Lorry < Vehicle
  def initialize(manufacturer, year, model, price, capacity)
    super(manufacturer, year, model, price)
  end
  def string()
    return super() + "\nCapacity: #{@capacity}"
  end
end

merc = Vehicle.new("Mercedes", "2020", "S-Class", 1200000)
puts "Vehicle\n#{merc.string()}"

isuzu  = Bus.new("Isuze", "2020", "Rodeo", 800000, 61)
puts "bus\n#{isuzu.string()}"

volvo = Lorry.new("Volvo", "2020", "FH", 500000, "100 tons")
puts "lorry\n#{volvo.string()}"
  
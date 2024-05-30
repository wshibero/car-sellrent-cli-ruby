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
end

merc = Vehicle.new("Mercedes", "2020", "S-Class", 1200000)
puts merc.string()
  
class MyCar
    attr_accessor :year, :color, :model, :speed

    def initialize(year, color, model)
        @year = year
        @color = color
        @model = model
        @speed = 0
    end

    def speed_up
        self.speed += 1
    end

    def brake
        self.speed -= 1
    end

    def shut_off
        self.speed.times {brake}
    end

    def spray_paint=(new_color)
        self.color = new_color
    end

    def self.mileage(consumption, distance)
        (1.0 * consumption / distance).round(4) * 100
    end

    def to_s
        "This is a car of model #{self.model} from year #{self.year},\nits color is #{self.color} and its current speed is #{self.speed} km/h"
    end
end

opel = MyCar.new(1998, "red", "Astra")

puts opel.speed
50.times {opel.speed_up}
puts opel.speed
30.times {opel.brake}
puts opel.speed
opel.shut_off
puts opel.speed

puts "=============================="

puts opel.color
puts opel.year
puts opel.model
opel.year = 2000
opel.color = "green"
opel.model = "Corsa"
puts opel.color
puts opel.year
puts opel.model

puts "=============================="

opel.spray_paint = "blue"
puts opel.color

puts "=============================="

puts "The consumption of #{opel.model} is #{MyCar.mileage(38, 549)} liter/km"

puts "=============================="

puts opel
p opel
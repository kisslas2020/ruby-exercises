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
end

opel = MyCar.new(1998, "red", "Astra")

puts opel.speed

50.times {opel.speed_up}

puts opel.speed

30.times {opel.brake}

puts opel.speed

opel.shut_off

puts opel.speed
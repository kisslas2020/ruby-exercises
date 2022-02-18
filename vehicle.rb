class Vehicle
    attr_accessor :year, :color, :model, :speed

    @@created_objects = 0
    
    def initialize(year, color, model)
        @year = year
        @color = color
        @model = model
        @speed = 0
        @@created_objects += 1
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

    def self.get_created_objects
        @@created_objects
    end

    def get_age
        calculate_age
    end

    private
    def calculate_age
        Time.now.year - year
    end
end
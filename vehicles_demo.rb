require_relative 'vehicle'
require_relative 'my_car'
require_relative 'my_truck'

module Exercises

    def exercise_1(v)
        puts v
        puts v.speed
        50.times {v.speed_up}
        puts v.speed
        30.times {v.brake}
        puts v.speed
        v.shut_off
        puts v.speed
        puts "=============================="
    end

    def exercise_2(v)
        puts v.color
        puts v.year
        puts v.model
        v.year = 2000
        v.color = "green"
        v.model = "Corsa"
        puts v.color
        puts v.year
        puts v.model
        puts "=============================="
    end

    def exercise_3(v)
        v.spray_paint = "blue"
        puts v.color
        puts "=============================="
    end

    def exercise_4(v)
        puts "The consumption of #{v.model} is #{MyCar.mileage(38, 549)} liter/km"
        puts "=============================="
    end

    def exercise_5(v)
        puts v
        p v
        puts "=============================="
    end

    def exercise_6
        puts Vehicle.get_created_objects
    end
end

class VehiclesDemo

    def initialize; end

    def get_car(y, c, m)
        MyCar.new(y, c, m)
    end

    def get_truck(y, c, m)
        MyTruck.new(y, c, m)
    end
    
    include Exercises
end

demo = VehiclesDemo.new
opel = demo.get_car(1998, "red", "Astra")
demo.exercise_1(opel)
demo.exercise_2(opel)
demo.exercise_3(opel)
demo.exercise_4(opel)
demo.exercise_5(opel)

man = demo.get_truck(2015, "white", "MAN")
demo.exercise_1(man)
demo.exercise_2(man)
demo.exercise_3(man)
demo.exercise_4(man)
demo.exercise_5(man)

demo.exercise_6
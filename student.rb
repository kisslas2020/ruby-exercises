class Student
    attr_reader :name

    def initialize(name, grade)
        @name = name
        @grade = grade
    end

    def better_grade_than?(other)
        get_grade > other.get_grade
    end

    protected
    def get_grade
        @grade
    end
end

joe = Student.new("Joe", 85)
bob = Student.new("Bob", 84)

puts "Well done!" if joe.better_grade_than?(bob)
class Student
    attr_accessor :name,:grade
    
    def initialize(name, grade)
        self.name=name
        self.grade=grade
    end

    def better_grade_than?(other_student)
        get_grade>other_student.get_grade
    end
    def lower_grade_than?(other_student)
        get_grade<other_student.get_grade
    end

    protected
    
    def get_grade
        @grade
    end
end

tom=Student.new("Tom", 88)
josh=Student.new("Josh", 60)

puts "Good Job" if tom.better_grade_than?(josh)
puts "Work harder" if josh.lower_grade_than?(tom)
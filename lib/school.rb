# code here!
class School
    attr_accessor :roster, :name, :add_student

    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(student_name, grade)
        if @roster.has_key?(grade)
           @roster[grade] << student_name
        else
            @roster[grade] = []
            @roster[grade] << student_name
        end
    end
    def grade(grade)
        if @roster.has_key?(grade)
            @roster[grade]
        else
            puts "grade doesn't exist"
        end
    end
    def sort
        @roster.each {|key, val| val.sort!}
    end
end
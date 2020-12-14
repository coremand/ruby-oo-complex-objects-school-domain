# code here!
class School
    attr_accessor :roster
    def initialize(name)
        @name = name
        @roster = {}
    end

    def add_student(name,grade)
        if @roster[grade]
            @roster[grade] << name
        else
            @roster[grade] = []
            @roster[grade] << name
            @roster
        end
    end
    def grade(grade)
        @roster[grade]
    end
    def sort
        @roster.map{|key,value|[key,value.sort]}.sort.to_h
    end
end
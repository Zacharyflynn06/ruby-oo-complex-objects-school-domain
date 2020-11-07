require 'pry'
class School

    attr_accessor :roster

    def initialize(school_name)
        @school_name = school_name
        @roster = {}
    end

    def grade(level)
        @roster[level]
    end

    def add_student(name, grade)
        # if @roster[grade]
        #   @roster[grade] << name

        # else
        #   @roster[grade] = [name]
        # end
        @roster[grade] ||= []
        @roster[grade] << name
    end

    def sort
        # new_hash = {}
        # @roster.each do |grade, students|
        #    new_hash[grade] = students.sort
        # end
        # new_hash
        @roster.each do |grade, students|
            students.sort!
        end
    end
end
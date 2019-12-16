#include Employee.rb

class Manager
    attr_accessor :name, :department, :employees
    attr_reader :age

    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @employees = []

        # Add new Manager object ot list of all managers
        @@all << self
    end

    def self.all
        return @@all
    end

    def hire_employee(name, salary)
        employee = Employee.new(name, self.name, salary)
        employees << employee
    end

    def self.all_departments
        index = 0
        departments = []
        while index < @@all.length
            departments << @@all[index].department
            index += 1
        end
        return departments.uniq
    end

    def self.average_age
        index = 0
        ages = []
        while index < @@all.length
            ages << @@all[index].age
            index += 1
        end
        # ages = @@all.select {|manager| @@all.manager.age}
        total_ages = ages.reduce(0) { |sum, num| sum + num }
        return total_ages/ages.length
    end
end

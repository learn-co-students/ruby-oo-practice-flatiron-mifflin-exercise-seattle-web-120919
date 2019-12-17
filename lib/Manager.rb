require_relative 'Employee.rb'
require 'pry'
class Manager

    attr_accessor :name, :department, :age
    @@all = [ ]
    
    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def employees
        Employee.all.select { |employee| employee.manager == self}
    end

    def hire_employee(name, salary)
        new_employee = Employee.new(name, salary, self)
    end

    def self.all_departments
        # binding.pry
        Manager.all.map { |manager| manager.department }
    end

    def self.average_age
        # binding.pry
        ave_ages = Manager.all.map { |manager| manager.age }
        ave_ages.sum/ave_ages.size
    end

end

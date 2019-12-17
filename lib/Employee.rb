require_relative 'Manager.rb'
require 'pry'
class Employee

    attr_accessor :name, :salary
    attr_reader :manager
    @@all = [ ]

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all
        @@all
    end

    def self.paid_over(salary)
        # binding.pry
        Employee.all.select {|employee| employee.salary > salary }
    end

    def find_by_department(department)
        binding.pry
        depart_manager = Manager.all.select do |manager|
            depart_mansager.department == department
        end
        depart_manager.employee.first
    end

end

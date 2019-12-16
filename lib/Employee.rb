require_relative "Manager"
require 'pry'
class Employee
    attr_accessor :name, :manager_name, :salary
    @@all = []
    def initialize(name, salary, manager_name)
        @name = name
        @manager_name = manager_name
        @salary = salary
        @@all << self
    end

    def self.all
        @@all
    end 

    def self.paid_over(over)
        self.all.select{|employee| employee.salary > over}
    end 

    def self.find_by_department(department)
        dep_manager = Manager.all.select{|manager| 
            manager.department==department}
        dep_manager[0].employees[0]
    end

    def tax_bracket
        Employee.all.select{|employee| 
            -1000 <= (employee.salary - self.salary) &&  
            (employee.salary - self.salary) <= 1000 && 
            employee.name != self.name}
    end     
end

require 'pry'
require_relative "Employee"
class Manager
    attr_accessor :name, :age
    attr_reader :department
    @@all = []

    def initialize(name, department, age)
        if(departmentCheck(department))
            @name = name
            @age = age
            @department = department
            @@all << self
        end 
    end

    def self.all
        @@all
    end 
    def department=(department)
         if(!departmentCheck(department))
            @department = department
         end
    end 

    def departmentCheck(department)
        if(Manager.all.find {|manager| 
        manager.department == department})
            return false
        else 
            return true
        end 
    end  

    def self.all_departments
        self.all.map {|manager| manager.department}
    end 

    def self.average_age 
        ages = 0.0
        count = 0.0
        self.all.each do |manager| 
            ages += manager.age
            count += 1
        end 
        return (ages/count).round(2)
    end
     
    def hire_employee(name, salary)
        employee = Employee.new(name, salary, self.name)
    end

    def employees
        Employee.all.select{ |employee| 
            employee.manager_name == self.name }
    end
end

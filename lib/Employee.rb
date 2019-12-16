class Employee
    attr_reader :name, :manager
    attr_accessor :salary
    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        @@all << self
    end

    def self.all 
        @@all
    end

    def self.find_by_department(department)
        # find the first manager with the matching department 
        # then return the first instance of their employees
        Manager.all.find{|manager| manager.department == department}.employees[0]
    end

    def manager_name
        @manager.name
    end

    def self.paid_over(amount)
        Employee.all.select{|employee| employee.salary > amount}
    end

    def tax_bracket
        max = salary + 1000
        min = salary - 1000
        Employee.all.find_all{|employee| employee.salary < max && employee.salary > min}
    end
end

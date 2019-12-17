class Employee
    attr_accessor :salary
    attr_reader :name, :manager_name
    @@all = []

    #returns a String that is the employee's name
    #salary => returns an integer that is the employee's salary
    #manager_name => returns a String that is the name of their manager
    def initialize(name, salary, manager_name)
        @name = name
        @salary = salary
        @manager_name = manager_name
        @@all << self 
    end

    def self.all
        @@all 
    end
    
    # takes Integer argument, returns Array of all employees whose salaries > amount
    # iterate over all employees for salaries that are > amount
    def self.paid_over(amount) 
        self.all.find_all {|money| money.salary > amount}        
    end

    # takes a String argument that is the name of a department and returns the first 
    # employee whose manager is working in that department
    # iterate over all managers for department, for their first employee name 
    def self.find_by_department(dept)
        Manager.all.find {|manager| manager.department == dept}.employees[0]
    end

    # returns an Array of all the employees whose salaries are within $1000 (± 1000) 
    # of the employee who invoked the method
    def tax_bracket
        min = salary - 1000
        max = salary + 1000
        Employee.all.find_all{|employee| employee.salary < max && employee.salary > min}
    end
end

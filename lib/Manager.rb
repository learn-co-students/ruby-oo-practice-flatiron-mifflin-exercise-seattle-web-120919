class Manager
    attr_accessor :department, :age, :employees
    attr_reader :name
    @@all = []
    @@all_departments = []

    # returns a String that is the managers name
    #department => returns a String that is the department that the manager oversees
    #age => returns an Integer that is the age of the manager
    def initialize(name, department, age)
        @name = name
        @department = department 
        @@all_departments << department
        @age = age
        @@all << self
    end

    # returns an Array of all the employees that the manager oversees    
    def employees
        Employee.all.select {|employees| employees.manager_name == self.name} 
    end

    #returns an Array of all the managers
    def self.all
        @@all
    end 

    # takes a (string, integer) argument that is the employees name, salary
    # and adds that employee to the list of employees that the manager oversees
    def hire_employee(name, salary)
        Employee.new(name, salary, self.name)
    end

    # returns an Array of all the department names that every manager oversees
    def self.all_departments
        @@all_departments
    end

    # returns a Float that is the average age of all the managers
    # @@average_age = (sum of @@all.age / @@all.age.count).to_f
    # iterate over @@all.age 
    def self.average_age
    #   i = 0
    #   self.all.each do |manager| 
    #      i += manager.age 
    #      puts i 
    #   end
        number_of_managers = self.all.count.to_f 
        self.all.reduce(0) {|sum, manager| sum += manager.age } / number_of_managers
    end
end

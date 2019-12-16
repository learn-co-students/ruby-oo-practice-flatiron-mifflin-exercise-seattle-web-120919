class Manager
    attr_reader :name, :department
    attr_accessor :age
    @@all = []

    def initialize(name, department, age)
        @name = name
        @department = department
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_departments
        Manager.all.map{|manager| manager.department}.uniq
    end

    def self.average_age
        ages = Manager.all.map{|manager| manager.age}
        ages.sum / ages.size.to_f
    end

    def employees
        Employee.all.find_all{|employee| employee.manager == self}
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end
end

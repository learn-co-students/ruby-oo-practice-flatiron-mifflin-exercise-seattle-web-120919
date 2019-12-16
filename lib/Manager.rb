class Manager
    attr_reader :name, :department, :age
    attr_accessor 

    @@all = []

    def initialize(name, age, department)
        @name = name
        @department = department
        @age = age
        save
    end
    
    def self.all
        @@all
    end

    def save
        @@all.push(self)
    end

    def employees
        Employee.all.find_all do |employees|
            employees.manager == self
        end
    end

    def hire_employee(name, salary)
        Employee.new(name, salary, self)
    end

    def self.all_apartments
        @@all.map do |managers|
            managers.department
        end
    end

    def self.average_age
        @@all.reduce(0) do |total, manager|
            total += manager.age
        end / @@all.length.to_i
    end

end

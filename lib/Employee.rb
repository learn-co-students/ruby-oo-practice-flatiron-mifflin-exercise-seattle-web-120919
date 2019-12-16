class Employee
    attr_reader :name, :salary, :manager

    @@all = []

    def initialize(name, salary, manager)
        @name = name
        @salary = salary
        @manager = manager
        save
    end

    def self.all
        @@all
    end

    def save
        @@all.push(self)
    end

    def manager_name
        @manager.name
    end

    def self.paid_over(num)
        @@all.find_all do |employee|
            employee.salary > num
        end
    end

    def self.find_by_department(finddepartment)
        @@all.find do |employee|
            employee.manager.department == finddepartment
        end
    end

    def tax_bracket
        @@all.find_all do |employee|
            # binding.pry
            ((self.salary - 1000)..(self.salary + 1000)).cover?(employee.salary)
        end
    end
end

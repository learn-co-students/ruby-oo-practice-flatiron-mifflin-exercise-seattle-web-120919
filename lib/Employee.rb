#include Manager.rb


class Employee
    attr_accessor :name, :manager_name
    attr_reader :salary

    # @@all

    def initialize(name, manager_name, salary)
        @name = name
        @manager_name = manager_name
        @salary = salary

        # # Add new Employee object ot list of all managers
        # @@all << self
    end
end

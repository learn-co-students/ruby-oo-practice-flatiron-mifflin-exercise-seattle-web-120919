require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
michael = Manager.new("Michael", "Paper", 35)
christina = Manager.new("Christina", "IT", 27)
jim = Employee.new("Jim", 40000, michael)
sean = Employee.new("Sean", 50000, christina)
michael.hire_employee("Dwight", 35000)


binding.pry
puts "done"

require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
m1 = Manager.new("John", 18, "Meats")
m2 = Manager.new("Lex", 27, "Produce")
m3 = Manager.new("Reggie", 18, "Drinks")
e1 = Employee.new("Hafu", 3000, m1)
m1.hire_employee("Ronny", 1000)
m1.hire_employee("Rex", 4000)
m2.hire_employee("Dyrus", 2000)
m3.hire_employee("Sneaky", 10000)
m3.hire_employee("Keane", 9000)

binding.pry
puts "done"

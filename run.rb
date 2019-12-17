require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

m1 = Manager.new("Chris", "Coding", 31)
m2 = Manager.new("Sandarya", "Not Coding", 25)

e1 = Employee.new("Eric", 75000, m1)
e2 = Employee.new("Cole", 80000, m2)
e3 = Employee.new("Christina", 85000, m1)
e4 = Employee.new("Eli", 90000, m1)



binding.pry
puts "done"

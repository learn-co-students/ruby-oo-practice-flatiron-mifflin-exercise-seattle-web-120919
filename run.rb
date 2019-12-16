require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager = Manager.new("Test", "Test Dept", 22)
manager2 = Manager.new("Test 2", "Test Dept 2", 33)

manager.hire_employee("Test Employee", 100000)
manager2.hire_employee("Test Employee 2", 120000)

puts Manager.all_departments
puts Manager.average_age

binding.pry
puts "done"

require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'


#Test your code here
manager1 = Manager.new("Frank", "Finace", 43)
manager2 = Manager.new("James", "Finace", 39)
manager2 = Manager.new("Jeff", "Software", 34)
manager3 = Manager.new("Shelly","Marketing", 36)
manager1.department = "Finace"
puts Manager.all
puts "Manager, name: #{manager1.name} , department: #{manager1.department}"
puts "Average age #{Manager.average_age}"
puts Manager.all_departments
employee1 = manager1.hire_employee("Jake", 61000)
employee2 = manager1.hire_employee("Harris", 306000)
employee3 = manager1.hire_employee("Ford", 60000)
employee3 = manager1.hire_employee("Tom", 59000)
puts manager1.employees
Employee.paid_over(55000)
puts Employee.find_by_department("Finace").name
puts employee3.tax_bracket








#binding.pry
puts "done"

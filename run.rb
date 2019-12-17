require_relative "lib/Manager"
require_relative "lib/Employee"
require 'pry'

chris = Manager.new("Chris", "IT", 31)
sd = Manager.new("Soundarya", "CS", 27)

alicia = Employee.new("Alicia", 2500, "Soundarya")
alexa = Employee.new("Alexa", 1600, "Soundarya")
chloe = Employee.new("Chloe", 3000, "Chris")
caspar = Employee.new("Caspar", 1300, "Chris")

chris.hire_employee("Charlotte", 8000)
sd.hire_employee("Anna", 7000)

Employee.paid_over(110)

Employee.find_by_department("IT")
# expect IT > Chris > first employee = chloe 
# expect CS > Soundarya > first employee = alicia
binding.pry
alicia.tax_bracket 
# returns employees (± 1000) of $2500 => between 1500-3500
# returns alexa, chloe

puts "done"

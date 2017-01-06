require './departments.rb'

isquad = Department.new('Implementation Squad')



colin = Employee.new(email: 'colin@automatedinsights.com', name: 'Colin Feeney', phone: '555-867-5309', salary: 5000)
greg = Employee.new(name: 'Greg Kenenitz', email: 'greg@automatedinsights.com', phone: '555-123-4567', salary: 5000)
brittany = Employee.new(name: 'Brittany Hayes', email: 'brittany@automatedinsights.com', phone: '111-222-3333', salary: 7000)
carly = Employee.new(salary: 6000, name: 'Carly Shedlick', email: 'carly@automatedinsights.com', phone: '987-654-3210')

isquad.add_employee(colin)
isquad.add_employee(greg)
isquad.add_employee(brittany)
isquad.add_employee(carly)

puts colin.salary
puts greg.salary
puts brittany.salary
puts carly.salary

colin.add_review('./sample1.txt')
greg.add_review('./sample3.txt')
brittany.add_review('./sample2.txt')
carly.add_review('./sample4.txt')

isquad.give_raises(10000)

puts colin.salary
puts greg.salary
puts brittany.salary
puts carly.salary

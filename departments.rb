require './employees.rb'

class Department
  def initialize(name)
    @name = name
    @employees = []
    @total_salary = 0
  end

attr_reader :name, :employees, :total_salary

  def add_employee(name)
    @employees << name
    @total_salary += name.salary
  end

  def give_raises(money)
    @total_salary += money
    sat_employees = @employees.select { |e| e.satisfaction == TRUE }
    raise_per_employee = money / sat_employees.count
    sat_employees.each do |e|
      e.give_raise(raise_per_employee)
    end
  end
end

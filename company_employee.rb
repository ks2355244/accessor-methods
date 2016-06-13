class Company
  attr_reader :company_name
  attr_accessor :employees

  def initialize(name)
    @company_name  = name
    @employees   = []
  end
  
  def company_name=(new_name)
    @company_name = new_name
  end
 
  def add_employee(employee)
    @employees << employee
  end 
end
 
 
class Employee
  attr_reader     :id
  attr_accessor   :name
  attr_accessor   :position
  def initialize(name, position)
    @name     = name
    @position = position
    @id       = rand(100_000_000).to_s.insert(2, '-').insert(6, '-')
  end
 
  def name=(new_name)
    @name = new_name
  end

 
  def position=(new_position)
    @position = new_position
  end
 
end
 
next_academy = Company.new("NEXT Academy")

josh = Employee.new("Josh", "Master Of The Bootiverse")

next_academy.add_employee(josh)

puts (p "#{next_academy.company_name} - #{next_academy.employees.first.name}: #{next_academy.employees.first.position}") == "NEXT Academy - Josh: Master Of The Bootiverse"

josh.name = "Not Spiderman"
josh.position = "Web Swinger"

next_academy.company_name = "Avengers"

puts (p "#{next_academy.company_name} - #{next_academy.employees.first.name}: #{next_academy.employees.first.position}") == "Avengers - Not Spiderman: Web Swinger"
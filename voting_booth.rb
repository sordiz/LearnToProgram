require_relative 'employee'

class VotingBooth
  public
    def ask_for_temperatures
      employees = Array.new

      while(true)
        p 'Please enter the desired AC temperature (between 17 and 28, 0 to exit):'
        input = gets.chomp.to_i

        if (input == 0)
          break
        end

        if (input < 17 || input > 28)
          p 'Invalid value.'
          next
        end

        employees.push(create_employee(input))
      end

      return employees
    end

  private
    def create_employee(temperature)
      employee = Employee.new

      p 'Please enter the employee name:'
      employee.name = gets.chomp

      p "Please enter the employee category ('RM', 'SM', 'Dev', 'QA'):"
      employee.category = gets.chomp
      employee.desired_AC_temperature = temperature

      return employee
    end
end

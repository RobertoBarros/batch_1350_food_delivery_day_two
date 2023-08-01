require_relative '../views/sessions_view.rb'

class SessionsController
  def initialize(employee_repository)
    @view = SessionsView.new
    @employee_repository = employee_repository
  end

  def login
    # Perguntar o username
    username = @view.ask_username
    # perguntar a password
    password = @view.ask_password
    # Encontrar o employee pelo username
    employee = @employee_repository.find_by_username(username)
    # verificar se o username existe e a password está correta
    if employee && employee.password == password
      # se sim, retornar o employee
      @view.welcome(employee)
      return employee
    else
      # se não, refazer o login
      @view.wrong_credentials
      login
    end
  end

end

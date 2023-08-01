class SessionsView

  def ask_username
    puts "Username?"
    print "> "
    gets.chomp
  end

  def ask_password
    puts "Password?"
    print "> "
    gets.chomp
  end

  def wrong_credentials
    puts "Wrong credentials... Try again!"
  end

  def welcome(employee)
    puts "Welcome #{employee.username}!"
  end
end

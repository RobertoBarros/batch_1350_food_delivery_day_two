class MealsView
  def ask_name
    puts "What's the name of the meal?"
    print "> "
    gets.chomp
  end

  def ask_price
    puts "What's the price of the meal?"
    print "> "
    gets.chomp.to_i
  end

  def display(meals)
    meals.each_with_index do |meal, index|
      puts "#{index + 1}. #{meal.name} - R$ #{meal.price}"
    end
  end
end

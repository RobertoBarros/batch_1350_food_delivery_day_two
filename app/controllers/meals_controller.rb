require_relative '../views/meals_view'

class MealsController
  def initialize(meal_repository)
    @meal_repository = meal_repository
    @view = MealsView.new
  end

  def add
    # Perguntar o nome da meal
    name = @view.ask_name

    # Perguntar o preço da meal
    price = @view.ask_price

    # Instanciar uma meal
    meal = Meal.new(name:, price:)

    # Adicionar a meal no repositório
    @meal_repository.create(meal)
  end

  def list
    # Pegar todas as meals do repositório
    meals = @meal_repository.all

    # Mandar as meals para a view exibir
    @view.display(meals)
  end
end

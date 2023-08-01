require_relative '../views/customers_view'

class CustomersController
  def initialize(customer_repository)
    @customer_repository = customer_repository
    @view = CustomersView.new
  end

  def add
    # Perguntar o nome da customer
    name = @view.ask_name

    # Perguntar o preço da customer
    address = @view.ask_address

    # Instanciar uma customer
    customer = Customer.new(name:, address:)

    # Adicionar a customer no repositório
    @customer_repository.create(customer)
  end

  def list
    # Pegar todas as customers do repositório
    customers = @customer_repository.all

    # Mandar as customers para a view exibir
    @view.display(customers)
  end
end

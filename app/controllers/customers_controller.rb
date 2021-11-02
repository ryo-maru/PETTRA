class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def new
    @customer = Customer.new
  end

  def show
    redirect_to new_customer_path
  end

  def create
    Customer.create(customer_params)
    redirect_to new_customer_path
  end

  private
  def customer_params
    params.require(:customer).permit(:medical_record_number, :animal_major_classification, :animal_subcategory, :name, :last_visit_date)
  end
end

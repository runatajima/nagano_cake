class Admins::CustomersController < ApplicationController
  def index
     @customer = Customer.new
     @customers = Customer.all
  end

  def show
  end

  def edit
  end

  def update
  end
end

private
  def customer_params
    
  end
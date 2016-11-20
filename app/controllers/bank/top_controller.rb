class Bank::TopController < ApplicationController
  def index
    @Bank = Bank.all
    render action: 'index'
  end

  def payment
    @name = params[:name]
    @ticket_id = params[:ticket_id]
    @price = params[:price]
    @owner = params[:owner]
    @buyer = params[:buyer]
    render action: 'payment'
  end

  def pay
    render action: 'index'
  end
end

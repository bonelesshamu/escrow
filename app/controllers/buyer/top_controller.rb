class Buyer::TopController < ApplicationController
  def index
    render action: 'index'
  end

  def status
    name = params[:name]
    ticket_id = params[:ticket_id].to_i
    if name && ticket_id
      currentTicket = Ticket.find_by(name: name, ticket_id: ticket_id)
      if currentTicket
        currentTicket.escrow = true
        currentTicket.save
      end
    end
    @Ticket = Ticket.all
    render action: 'status'
  end

  def escrow_status
    @Ticket = Ticket.all
    render action: 'escrow_status'
  end

  def buy
    @name = params[:name]
    @ticket_id = params[:ticket_id]
    @price = params[:price]
    @owner = params[:owner]
    @balance = 0
    currentBank = Bank.find_by(name: "buyer")
    if currentBank
      @balance = currentBank.balance
    end
    render action: 'buy'
  end

  def confirm
    @name = params[:name]
    @ticket_id = params[:ticket_id]
    @price = params[:price]
    @owner = params[:owner]
    @balance = params[:balance]
    render action: 'confirm'
  end

end

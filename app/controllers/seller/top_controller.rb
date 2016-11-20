class Seller::TopController < ApplicationController
  protect_from_forgery :except => [:status, :issue_post]

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

  def issue
    render action: 'issue'
  end

  def issue_post
    name = params[:name]
    number = params[:number].to_i
    price = params[:price].to_i
    number.times do |i|
      newTicket = Ticket.new
      newTicket.name = name
      newTicket.ticket_id = i+1
      newTicket.price = price
      newTicket.owner = "Seller"
      newTicket.escrow = false
      newTicket.save
    end
    render action: 'status'
  end
end

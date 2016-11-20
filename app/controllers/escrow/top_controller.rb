require 'net/http'
require 'uri'

class Escrow::TopController < ApplicationController
  def index
    @Ticket = Ticket.all
    render action: 'index'
  end

  def payment
    @name = params[:name]
    @ticket_id = params[:ticket_id]
    @price = params[:price]
    @owner = params[:owner]
    @buyer = params[:buyer]

    currentTicket = Ticket.find_by(name: @name, ticket_id: @ticket_id)
    currentSender = Bank.find_by(name: @buyer)
    currentReceiver = Bank.find_by(name: @owner)

    if currentTicket
      currentTicket.owner = @buyer
      currentTicket.escrow = false
      currentTicket.save
      currentSender.balance -= @price.to_i
      currentSender.save
      currentReceiver.balance += @price.to_i
      currentReceiver.save
=begin
      params = URI.encode_www_form({'sender'=>@buyer, 'receiver'=>@owner})
      uri = URI.parse("http://127.0.0.1:4000/bank/pay?#{params}")
      res = Net::HTTP.start(uri.host, uri.port) do |http|
        http.get(uri.request_uri)
      end
      p res
=end
      render action: 'complete'
    else
      @Ticket = Ticket.all
      render action: 'index'
    end
  end
end

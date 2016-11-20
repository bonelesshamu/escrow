# -*- coding: utf-8 -*-
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Ticket.create(name: "サザン", ticket_id: 1, price: 5000, owner: "seller", escrow: false)
Ticket.create(name: "サザン", ticket_id: 2, price: 5000, owner: "seller", escrow: false)
Ticket.create(name: "サザン", ticket_id: 3, price: 5000, owner: "seller", escrow: false)
Ticket.create(name: "サザン", ticket_id: 4, price: 5000, owner: "seller", escrow: false)
Ticket.create(name: "サザン", ticket_id: 5, price: 5000, owner: "seller", escrow: false)

Bank.create(name: "seller", number: "1234567", balance: 200000)
Bank.create(name: "buyer", number: "2222222", balance: 300000)

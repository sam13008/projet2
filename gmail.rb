require "gmail"
require 'rubygems'



gmail =  Gmail.connect!("nom", "password")
Gmail.connect("nom", "password") do |gmail|
  puts gmail.logged_in?
end
puts gmail.inbox.count
puts gmail.inbox.count(:unread)
puts gmail.inbox.count(:read)


gmail.logout
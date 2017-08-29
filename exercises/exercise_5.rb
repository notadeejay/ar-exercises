require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

revenue = Store.sum(:annual_revenue)
count = Store.count
average = revenue / count 
puts "Average annual revenue: #{average}"

stores_mil = Store.where("annual_revenue < ?", 1000000).count
puts "Number of stores making over 1M: #{stores_mil}"

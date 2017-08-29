require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

Store.create!(
  name: 'Surrey',
  annual_revenue: 224000,
  mens_apparel: false,
  womens_apparel: true
)


Store.create!(
  name: 'Whistler',
  annual_revenue: 1900000,
  mens_apparel: true,
  womens_apparel: false
)

Store.create!(
  name: 'Yaletown',
  annual_revenue: 430000,
  mens_apparel: true,
  womens_apparel: false
)

puts Store.count 

mens_stores = Store.where(mens_apparel: true, womens_apparel: false)
puts mens_stores


mens_stores.each do |store|
  puts "Store name: #{store.name}"
  puts "Annual revenue: #{store.annual_revenue}"
end

womens_stores = Store.where("womens_apparel = ? AND annual_revenue <  ?", true, 1000000)

womens_stores.each do |store|
  puts "Store name: #{store.name}"
  puts "Annual revenue(under 1M): #{store.annual_revenue}"
end

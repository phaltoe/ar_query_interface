# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pedro = Customer.create(:name => "Pedro")
peter = Customer.create(:name => "Peter")
avi = Customer.create(:name => "Avi")

apple_watch = Product.create(:name => "Apple Watch", :price => "800")
macbook = Product.create(:name => "Macbook", :price => "1500")
iphone = Product.create(:name => "Iphone", :price => "1000")

#Let's Pedro buy a macbook
pedros_cart_1 = pedro.carts.create
pedros_cart_1.line_items.create(:product => macbook)

#let's Avi buy an iphone and an apple_watch
avis_cart_1 = avi.carts.create
avis_cart_1.line_items.create(:product => iphone)
avis_cart_1.line_items.create(:product => apple_watch)

#let's Pedro buy an iphone in a separate purchase
pedros_cart_2 = pedro.carts.create
pedros_cart_2.line_items.create(:product => iphone)



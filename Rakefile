# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task :shop_stats => :environment do
  #what's the total cost of a cart?
  puts "#{pedros_cart_1.total_cost}"
  puts "#{avis_cart_1.total_cost}"
  puts "#{pedros_cart_2.total_cost}"

  #what's the most popular product?
  puts "Most popular product is: #{Product.most_popular}"

  #who is the most profitable customer?
  puts "Most profitable customer is: #{Customer.most_profitable}"
end


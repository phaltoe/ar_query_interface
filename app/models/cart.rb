class Cart < ActiveRecord::Base
  belongs_to :customer
  has_many :line_items
  has_many :products, through: :line_items

  def total_cost
    c.products.sum(:price)
    # 1 - Find all the line_items in this cart
    # 2 - Use those to find all the products
    # 3 - Sum the price of each product
  end 

  def self.most_expensive
    joins(:products).group(:cart_id).order('products.price').limit(1).sum(:price)
  end

  def total_cost
    products.sum(:price)
  end

  def self.summary
    joins(:products).group(:cart_id).sum(:price)
  end
end

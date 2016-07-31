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

  def self.summary
    #joins(:line_items => :products) == joins(:products)
    joins(:products).group(:cart_id).sum(:price)
  end
end

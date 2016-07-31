class Product < ActiveRecord::Base
  has_many :line_items
  has_many :carts, through: :line_items
  has_many :customers, through :carts

  def self.most_popular
    joins(:line_items).group(:product_id).count(:product_id).max
  end

  def self.bought_this_month
    joins(:carts).where("carts.created_at" => 1.month.ago..DateTime.now)
  end
end

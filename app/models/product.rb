class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders, through: :carted_products
  has_many :category_products
  has_many :categories, through: :category_products
  
  def tax
    price.to_i * 0.15
  end

  def total
    price.to_i * 1.15
  end

  def discounted?
    price.to_i < 50
  end

end




 
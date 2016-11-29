class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders
  
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




 
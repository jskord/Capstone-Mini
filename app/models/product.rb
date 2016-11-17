class Product < ApplicationRecord

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




 
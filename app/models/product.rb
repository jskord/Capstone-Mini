class Product < ApplicationRecord
  def sale_message
    if price.to_i < 50 
      @message = "sale item"
    else
      @message = "everyday value"
    end
    return @message
  end

  def tax
    price.to_i * 0.15
  end

  def total
    price.to_i * 1.15
  end

end




 
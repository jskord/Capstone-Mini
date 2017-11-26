class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders, through: :carted_products
  has_many :category_products
  has_many :carted_products
  has_many :categories, through: :category_products
  has_many :users, through: :carted_products

  validates :name, uniqueness: true
  validates :name, length: { minimum: 2 }
  validates :name, length: { maximum: 50 }
  validates :name, presence: true
  validates :description, presence: true
  

  
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




 
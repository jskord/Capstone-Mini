class CartedProduct < ApplicationRecord
  belongs_to :product
  belongs_to :order
  belongs_to :user

  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0, only_integer: true }
  
end

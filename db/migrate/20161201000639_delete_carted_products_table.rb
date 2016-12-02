class DeleteCartedProductsTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :carted_products
  end
end

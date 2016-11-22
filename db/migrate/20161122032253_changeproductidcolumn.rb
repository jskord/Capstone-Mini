class Changeproductidcolumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :products, :supplierid, :supplier_id
  end
end

class AddSupplierIdColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :supplierid, :integer
  end
end

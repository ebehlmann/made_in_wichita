class CreateVendorsAndProducts < ActiveRecord::Migration
  def change
    create_table :vendors_products, id: false do |t|
    	t.belongs_to :vendor
    	t.belongs_to :product
    end
  end
end

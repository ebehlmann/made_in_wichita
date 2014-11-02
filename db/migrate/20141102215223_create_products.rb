class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
    	t.column :name, :string
    	t.column :description, :string
    	t.column :price, :money
    	t.column :category_id, :integer
    	t.column :artist_id, :integer

    	t.timestamps
    end
  end
end

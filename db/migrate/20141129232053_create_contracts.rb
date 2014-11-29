class CreateContracts < ActiveRecord::Migration
  def change
    create_table :contracts do |t|
    	t.belongs_to :product
    	t.belongs_to :vendor

    	t.timestamps
    end
  end
end

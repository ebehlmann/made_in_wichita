class CreateVendors < ActiveRecord::Migration
  def change
    create_table :vendors do |t|
    	t.column :name, :string
    	t.column :description, :string
    	t.column :owner, :string
    	t.column :location, :string
    	t.column :website, :string
    	t.column :phone, :string
    	t.column :facebook, :string
    	t.column :twitter, :string
    	t.column :open_monday, :boolean
    	t.column :open_tuesday, :boolean
    	t.column :open_wednesday, :boolean
    	t.column :open_thursday, :boolean
    	t.column :open_friday, :boolean
    	t.column :open_saturday, :boolean
    	t.column :open_sunday, :boolean
    	t.column :weekday_opening_time, :time
    	t.column :weekday_closing_time, :time
    	t.column :saturday_opening_time, :time
    	t.column :saturday_closing_time, :time
    	t.column :sunday_opening_time, :time
    	t.column :sunday_closing_time, :time
    end
  end
end

class Product < ActiveRecord::Base
	validates :name, :description, presence: true
	validates :price, numericality: true
	has_and_belongs_to_many :vendors
end
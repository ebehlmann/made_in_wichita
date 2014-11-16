class Product < ActiveRecord::Base
	has_and_belongs_to_many :vendors
	validates :name, :description, presence: true
	validates :price, numericality: true
end
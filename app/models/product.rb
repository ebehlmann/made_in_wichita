class Product < ActiveRecord::Base
	has_many :contracts
	has_many :vendors, :through => :contracts
	validates :name, :description, presence: true
	validates :price, numericality: true
end
class Vendor < ActiveRecord::Base
	has_many :contracts
	has_many :products, :through => :contracts
	validates :name, :presence => true
	validates :description, :presence => true
end
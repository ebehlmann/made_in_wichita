class Contract < ActiveRecord::Base
	belongs_to :product
	belongs_to :vendor
end
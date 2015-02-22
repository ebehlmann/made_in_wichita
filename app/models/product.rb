class Product < ActiveRecord::Base
	has_many :contracts
	has_many :vendors, :through => :contracts
	validates :name, :description, presence: true
	validates :price, numericality: true
	has_attached_file :image, :styles => { :medium => "400x400>", :thumb=> "200x200" }, :default_url => "/images/:style/missing.png"
	validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end